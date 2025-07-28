#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>
#include <cstring>
#include <thread>

#include <iostream>
#include "lib/bindings/c/libtorrest.h"

extern "C"
{
  int start_async_server(uint16_t port, char* settings_path, int global_log_level);
}
