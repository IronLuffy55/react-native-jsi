
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
