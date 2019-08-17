cmake_minimum_required(VERSION 3.5)
project(stirling VERSION 1.0.0 LANGUAGES CXX)

add_executable(stirling src/main.cpp)
target_compile_features(stirling PRIVATE cxx_auto_type)

find_package(Exponent 1.0 REQUIRED CONFIG)
find_package(Sqrt 1.0 REQUIRED CONFIG)
find_package(Euler 1.0 REQUIRED CONFIG)
find_package(Pi 1.0 REQUIRED CONFIG)

target_link_libraries(stirling 
        Exponent::Exponent
        Sqrt::Sqrt
        Euler::Euler
        Pi::Pi
)