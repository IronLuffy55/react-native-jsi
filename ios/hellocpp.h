//
//  hellocpp.hpp
//  testjsi5_RN59
//
//  Created by Wilking Interiano on 10/19/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

#ifndef hellocpp_h
#define hellocpp_h
class Hello2Impl;
class HelloCPP {
public:
  void init(void);
  void sayHello();
private:
  Hello2Impl * _impl;
};

#endif /* hellocpp_hpp */


