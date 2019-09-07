// Copyright 2004-present Facebook. All Rights Reserved.

#include "Test.h"
#include <chrono>
using namespace std::chrono;

namespace example {
  int Test::runTest() const {
    milliseconds ms = duration_cast< milliseconds >(
                                                    system_clock::now().time_since_epoch()
                                                    );
    return ms.count();
    
//    return 1337;
  }
} // namespace facebook
