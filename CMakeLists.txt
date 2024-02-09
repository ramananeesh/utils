cmake_minimum_required(VERSION 3.10)
project(utilities VERSION 1.0
                        DESCRIPTION "Utilities for Experiments"
                        LANGUAGES CXX
)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake" ${CMAKE_MODULE_PATH})

add_subdirectory(external)

add_library(utilities INTERFACE)

target_compile_features(utilities INTERFACE cxx_std_11)

target_link_libraries(utilities INTERFACE 
    spdlog::spdlog
    tabulate
)

target_include_directories(utilities INTERFACE
    ${CMAKE_SOURCE_DIR}/lib
)
