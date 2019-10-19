//
//  REAJsiModule.cpp
//  RNReanimated
//
//  Created by Christian Falch on 24/04/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//


#include "HelloJsiModule.h"
#import <React/RCTBridge+Private.h>
#import "HelloModule.h"
#import "JSIUtilities.h"
HelloJsiModule::HelloJsiModule(HelloModule* module)
: module_(module) {}

void HelloJsiModule::install(HelloModule *module) {
    RCTCxxBridge *cxxBridge = (RCTCxxBridge *)module.bridge;
    if (cxxBridge.runtime == nullptr) {
        return;
    }
    
    jsi::Runtime &runtime = *(jsi::Runtime *)cxxBridge.runtime;
    auto moduleName = "HelloModule";
    
    auto reaJsiModule = std::make_shared<HelloJsiModule>(std::move(module));
    auto object = jsi::Object::createFromHostObject(runtime, reaJsiModule);
    runtime.global().setProperty(runtime, moduleName, std::move(object));
}

jsi::Value HelloJsiModule::get(jsi::Runtime &runtime, const jsi::PropNameID &name) {
    auto methodName = name.utf8(runtime);
    if (methodName == "sayHello") {
        HelloModule* module = module_;
        return jsi::Function::createFromHostFunction(runtime, name, 2, [module](
               jsi::Runtime &runtime,
               const jsi::Value &thisValue,
               const jsi::Value *arguments,
               size_t count) -> jsi::Value {
            
            [module sayHello];
            return jsi::Value::undefined();
        });
    } else if(methodName == "sayHelloWithInput") {
      HelloModule* module = module_;
      return jsi::Function::createFromHostFunction(runtime, name, 2, [module](
             jsi::Runtime &runtime,
             const jsi::Value &thisValue,
             const jsi::Value *arguments,
             size_t count) -> jsi::Value {
//        NSString *input = ;
        auto arg1 = &arguments[0];
        auto arg2 = &arguments[1];
        
//        jsi::Object obj = arg1->asObject(runtime);
        id input = convertJSIStringToNSString(runtime, arg1->asString(runtime));
//        id output = convertJSIValueToObjCObject(runtime, arg1->asObject(runtime));
        NSLog(@"HElloModuleJSI: soutput>%@", input);
//        if(thisValue.isString()){
//
//        }
        
          
        NSString *output = [module sayHelloWithInput: input];
        return jsi::String::createFromUtf8(runtime, [output UTF8String] ?: "");
//          return jsi::Value::undefined();
      });
    }
 
 
    
    
    return jsi::Value::undefined();
}

