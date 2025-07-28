#include "bindings.h"

extern "C" int start_async_server(uint16_t port, char* settings_path, int global_log_level)
{
  std::cout << "Starting torrest server on port " << port << " with settings path " << settings_path << " and global log level " << global_log_level << std::endl;

  std::thread([port, settings_path, global_log_level]()
              { start(port, String{settings_path, strlen(settings_path)}, global_log_level); })
      .detach();

  return 0;
}
