/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import "AppDelegate.h"

#import <React/RCTBridge+Private.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
//#import "hello2.h"
#import "hellocpp.h"
#import "Test.h"
#import "TestBinding.h"
#import "HelloModule.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
//  [[[Hello2 alloc] init]sayHello];
//  HelloCPP *hellocpp = new HelloCPP();
//  hellocpp->init();
//  hellocpp->sayHello();
//  HelloCPP::sayHello();
  RCTBridge *bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:launchOptions];
  RCTRootView *rootView = [[RCTRootView alloc] initWithBridge:bridge
                                                   moduleName:@"testjsi5_RN59"
                                            initialProperties:nil];

  rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];
//  [[NSNotificationCenter defaultCenter] addObserver:self
//                                           selector:@selector(handleJavaScriptDidLoadNotification:)
//                                               name:RCTJavaScriptDidLoadNotification
//                                             object:bridge];

  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  UIViewController *rootViewController = [UIViewController new];
  rootViewController.view = rootView;
  self.window.rootViewController = rootViewController;
  [self.window makeKeyAndVisible];
  return YES;
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
#else
  return [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
#endif
}

//- (void)handleJavaScriptDidLoadNotification:(__unused NSNotification*)notification {
//  RCTCxxBridge* bridge = notification.userInfo[@"bridge"];
//  facebook::jsi::Runtime* runtime = (facebook::jsi::Runtime*)bridge.runtime;
//  auto test = std::make_unique<example::Test>();
//  std::shared_ptr<example::TestBinding> testBinding_ = std::make_shared<example::TestBinding>(std::move(test));
//  example::TestBinding::install((*runtime),  testBinding_);
//}
@end
