

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


