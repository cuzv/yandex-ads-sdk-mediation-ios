import Foundation
import ObjectiveC.runtime

public enum BigoADSResourceFix {
  /// BigoADS looks up its render assets (mraid.js, vpaid_player.html, UI icons) with
  /// `[[NSBundle mainBundle] pathForResource:@"BigoADSRes.bundle" ofType:nil]`, which only
  /// resolves when the bundle sits at the app-bundle root — a layout SwiftPM cannot produce.
  /// Redirects that lookup to the copy shipped in this package.
  ///
  /// Call once, before the first Bigo ad is loaded. Returns false if the patch could not be
  /// applied (Bigo renamed the class, or the resource is missing).
  @discardableResult
  public static func install() -> Bool {
    // Already integrated CocoaPods-style: nothing to do.
    if Bundle.main.path(forResource: "BigoADSRes", ofType: "bundle") != nil { return true }
    
    guard let path = Bundle.module.path(forResource: "BigoADSRes", ofType: "bundle"),
          let cls = NSClassFromString("BGAdBundleUtils"),
          let method = class_getClassMethod(cls, NSSelectorFromString("getBigoBundlePath"))
    else { return false }
    
    let cached = path as NSString
    let block: @convention(block) (AnyObject) -> NSString = { _ in cached }
    method_setImplementation(method, imp_implementationWithBlock(block))
    return true
  }
}
