//
//  hellocpp.cpp
//  testjsi5_RN59
//
//  Created by Wilking Interiano on 10/19/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

#include "hellocpp.h"
#include "hello2-c-interface.h"
#include <stdio.h>


void HelloCPP::init( void )
{
    _impl = new Hello2Impl();
  _impl->init();
  printf("HelloCPP::init::end\n");
}

void HelloCPP::sayHello( void )
{
  printf("Hello from bridged C++\n");
  _impl->sayHello( );

}

//void HelloCPP::sayHello(){
//  printf("Hello from C++\n");
//}
