//
//  REAJsiModule.hpp
//  RNReanimated
//
//  Created by Christian Falch on 24/04/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//
#import <jsi/jsi.h>

using namespace facebook;

@class HelloModule;

class JSI_EXPORT HelloJsiModule : public jsi::HostObject {
public:
    HelloJsiModule(HelloModule* module);
    
    static void install(HelloModule *module);
    
    /*
     * `jsi::HostObject` specific overloads.
     */
    jsi::Value get(jsi::Runtime &runtime, const jsi::PropNameID &name) override;
    
private:
    HelloModule* module_;
};
