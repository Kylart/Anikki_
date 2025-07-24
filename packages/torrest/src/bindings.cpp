#include <thread>
#include "bindings.h"

extern "C" int start_async_server(uint16_t port, String settings_path, int global_log_level)
{
  std::thread([port, settings_path, global_log_level]()
              { start(port, settings_path, global_log_level); })
      .detach();

  return 0;
}
