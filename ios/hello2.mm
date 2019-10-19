#import "hello2.h"

@implementation Hello2
Hello2Impl::Hello2Impl( void )
    : self( NULL ) {   }
void Hello2Impl::init( void )
{
  self = (__bridge void *) [[Hello2 alloc] init];
}
void Hello2Impl::sayHello(  )
{
//  [[Hello2 alloc] init]
//  [(__bridge id)self sayHello];
//  [(__bridge id)self sayHello];
}
//Hello2Impl::~Hello2Impl( void )
//{
//    [(id)self dealloc];
//}


- (void) sayHello {
  NSLog(@"Hello from objective c");
  return;
}
@end
