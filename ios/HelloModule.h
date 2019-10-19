#import <React/RCTBridgeModule.h>
#import <React/RCTEventDispatcher.h>
#import <React/RCTEventEmitter.h>
#import <React/RCTUIManager.h>
#import <React/RCTUIManagerObserverCoordinator.h>
#import <React/RCTUIManagerUtils.h>
#import "testjsi5_RN59-Swift.h"



@interface HelloModule : RCTEventEmitter <RCTBridgeModule> {
  HelloSwift *helloSwift;
}
// The Objective-C member function you want to call from C++
-
(void) sayHello;
-(NSString *) sayHelloWithInput:(NSString*) input;
@end
