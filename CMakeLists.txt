cmake_minimum_required(VERSION 3.10)
project(drake CXX)

find_package(ament_cmake REQUIRED)
find_package(ament_cmake_vendor_package REQUIRED)

ament_vendor(drake
  VCS_URL https://github.com/RobotLocomotion/drake
  VCS_VERSION v1.25.0
  CMAKE_ARGS
# At the moment, closed-source dependencies are disabled.
    -DWITH_GUROBI:BOOL=OFF
    -DWITH_MOSEK:BOOL=OFF 
    -DWITH_SNOPT:BOOL=OFF
# Drake should use the Ament version of these dependencies found by CMake,
# not the Ubuntu version found in /usr/include.
    -DWITH_USER_EIGEN:BOOL=ON
    -DWITH_USER_FMT:BOOL=ON
    -DWITH_USER_SPDLOG:BOOL=ON
  PATCHES patches
  GLOBAL_HOOK
)

ament_package()
