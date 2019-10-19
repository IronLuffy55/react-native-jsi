#import "HelloModule.h"
#import "HelloJsiModule.h"
#import "testjsi5_RN59-Swift.h"
@implementation HelloModule {
  
}
RCT_EXPORT_MODULE(HelloModule);
RCT_EXPORT_METHOD(initialize) {
  NSLog(@"HElloModuleJSI: I am initializing");
  return;
}
- (NSArray<NSString *> *)supportedEvents {
  return [[NSArray<NSString *> alloc] init];
};
- (void)setBridge:(RCTBridge *)bridge {
  [super setBridge:bridge];
  NSLog(@"HElloModuleJSI: installing");
  HelloJsiModule::install(self);
  helloSwift = [[HelloSwift alloc] init];
  
}
-(void) sayHello {
  NSLog(@"HElloModuleJSI: sayHello: Hello from objective c");
  return;
}
-(NSString *) sayHelloWithInput: (NSString *)input {
  NSLog(@"HElloModuleJSI: sayHelloWIthInput: Hello from objective c: input> %@",input);
  return [helloSwift sayHelloWithInput: input];
//  return input;
}
@end
