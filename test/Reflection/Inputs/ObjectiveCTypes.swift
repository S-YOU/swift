import Foundation

public class OC : NSObject {
  public let nsObject: NSObject
  public let nsString: NSString
  public let cfString: CFString
  public let aBlock: @convention(block) () -> ()
  public init(nsObject: NSObject, nsString: NSString, cfString: CFString,
              aBlock: @convention(block) () -> ()) {
    self.nsObject = nsObject
    self.nsString = nsString
    self.cfString = cfString
    self.aBlock = aBlock
  }
}

public class GenericOC<T> : NSObject {
  public let ocnss: GenericOC<NSString>
  public let occfs: GenericOC<CFString>
  public init(nss: GenericOC<NSString>, cfs: GenericOC<CFString>) {
    self.ocnss = nss
    self.occfs = cfs
  }
}

public class HasObjCClasses {
  let url = NSURL()
  let integer = NSInteger()
  let rect = NSRect(x: 0, y: 1, width: 2, height: 3)
}

public func closureHasObjCClasses(b: NSBundle, c: NSCoding) -> () -> () {
  return { _ = b; _ = c }
}
