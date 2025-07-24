#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>

#include "lib/bindings/c/libtorrest.h"

extern "C"
{
  int start_async_server(uint16_t port, String settings_path, int global_log_level);
}
