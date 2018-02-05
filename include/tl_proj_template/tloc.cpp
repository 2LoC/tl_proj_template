#include "tloc.h"

#include <memory>

void foo()
{
  const auto& ptr = std::shared_ptr<int>();
}
