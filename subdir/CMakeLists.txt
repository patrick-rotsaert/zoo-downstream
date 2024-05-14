cmake_minimum_required(VERSION 3.19)

project(zoo-downstream-subdir LANGUAGES CXX)

add_subdirectory(zoo)

add_subdirectory(../downstream zoo-downstream)
