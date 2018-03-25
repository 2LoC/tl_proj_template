#include "tloc.h"

#include <memory>

bool foo()
{
  const auto& ptr = std::shared_ptr<int>();
  return ptr != nullptr;
}
