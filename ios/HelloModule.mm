#import "HelloModule.h"
#import "HelloJsiModule.h"
@implementation HelloModule {}
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

}
RCT_EXPORT_METHOD(sayHello) {
  NSLog(@"HElloModuleJSI: Hello from objective c");
  return;
}
@end
