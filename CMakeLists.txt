cmake_minimum_required(VERSION 3.10)
project(tictactoe)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED True)

find_package(Qt6 COMPONENTS Widgets REQUIRED)

include_directories(${CMAKE_SOURCE_DIR})

add_executable(tictactoe main.cpp GUI/window.cpp logic/logic.cpp)

target_link_libraries(tictactoe Qt6::Widgets)
target_include_directories(tictactoe PRIVATE ${CMAKE_SOURCE_DIR}/GUI)
target_include_directories(tictactoe PRIVATE ${CMAKE_SOURCE_DIR}/logic)