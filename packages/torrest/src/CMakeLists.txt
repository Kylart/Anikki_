cmake_minimum_required(VERSION 3.7)
project(anitorrest)

# Recommended build commands:
# cmake -B cmake-build -DCMAKE_BUILD_TYPE=Debug -Dbuild_library=ON
# cmake --build cmake-build --target torrest -- -j "$(nproc)"
set(build_library ON CACHE BOOL "Build the torrest library")

# Add the torrest source directory
add_subdirectory(lib)

# Create the anitorrest shared library from your bindings and link to torrest
add_library(anitorrest SHARED bindings.cpp)
target_link_libraries(anitorrest PRIVATE torrest)

# Instead, add torrest object files
target_sources(anitorrest PRIVATE $<TARGET_OBJECTS:torrest>)

# Also inherit torrest's include directories
target_include_directories(anitorrest
    PRIVATE
        $<TARGET_PROPERTY:torrest,INCLUDE_DIRECTORIES>
)

# Optionally, set the output name and location
set_target_properties(anitorrest PROPERTIES OUTPUT_NAME "anitorrest")

target_compile_definitions(anitorrest PUBLIC DART_SHARED_LIB)

# Copy anitorrest library to target path if specified (for Docker builds)
if (DEFINED target_path)
    add_custom_command(TARGET anitorrest POST_BUILD
            COMMAND ${CMAKE_COMMAND} -E copy "$<TARGET_FILE:anitorrest>" "${target_path}")
endif ()
