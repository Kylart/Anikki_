#include "bindings.h"

extern "C" int start_async_server(uint16_t port, char *settings_path, char *logs_path)
{
  std::cout << "Starting torrest server on port " << port << " with settings path " << settings_path << " and logs path " << logs_path << std::endl;

  torrest::utils::add_file_sink(std::string(logs_path));

  std::thread([port, settings_path]()
              { start(port, String{settings_path, strlen(settings_path)}, 0); })
      .detach();

  return 0;
}
