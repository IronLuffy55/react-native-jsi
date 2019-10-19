//
//  hello2-c-interface.h
//  testjsi5_RN59
//
//  Created by Wilking Interiano on 10/19/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

#ifndef hello2_c_interface_h
#define hello2_c_interface_h


class Hello2Impl
{
public:
    Hello2Impl ( void );
    ~Hello2Impl( void );

    void init( void );
    void  sayHello(  );
    

private:
    void * self;
};

#endif /* hello2_c_interface_h */
