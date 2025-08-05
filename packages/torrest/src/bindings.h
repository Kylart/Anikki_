#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>
#include <cstring>
#include <thread>

#include <iostream>
#include "lib/bindings/c/libtorrest.h"
#include "lib/src/utils/log.h"

// Add the EXPORT_C macro definition
#ifdef _WIN32
#define EXPORT_C extern "C" __declspec(dllexport)
#else
#define EXPORT_C extern "C" __attribute__((visibility("default")))
#endif

// Change the declaration to use EXPORT_C
EXPORT_C int start_async_server(uint16_t port, char *settings_path, char *logs_path);
