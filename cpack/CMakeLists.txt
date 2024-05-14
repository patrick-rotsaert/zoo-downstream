cmake_minimum_required(VERSION 3.24)

project(zoo-downstream-cpack LANGUAGES CXX)

# CMAKE_PREFIX_PATH is set from CMakePresets.json
find_package(zoo REQUIRED CONFIG COMPONENTS common bitcask fs spider squid)

add_subdirectory(../downstream zoo-downstream)
