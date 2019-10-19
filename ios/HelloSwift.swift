import Foundation



@objc class HelloSwift: NSObject {
  @objc func sayHello(input: NSString)->NSString{
    print("HElloModuleJSI: HelloSwift: sayHello: start with input\(input)")
    return input;
  }
}
