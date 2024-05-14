cmake_minimum_required(VERSION 3.24)

project(zoo-downstream-fetchcontent LANGUAGES CXX)

include(FetchContent)
FetchContent_Declare(
  zoo
  GIT_REPOSITORY https://github.com/patrick-rotsaert/zoo.git
  GIT_TAG        master
  FIND_PACKAGE_ARGS COMPONENTS common bitcask fs spider squid
)

# This will try calling find_package() first for both dependencies
FetchContent_MakeAvailable(zoo)

add_subdirectory(../downstream zoo-downstream)
