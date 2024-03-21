cmake_minimum_required(VERSION 3.10)
project(drake CXX)

find_package(ament_cmake REQUIRED)
find_package(ament_cmake_vendor_package REQUIRED)

# Extract the version from package.xml and use it to grab the upstream source
ament_package_xml()
set(PACKAGE_XML_VERSION ${${PROJECT_NAME}_VERSION})

ament_vendor(drake
  VCS_URL https://github.com/RobotLocomotion/drake
  VCS_VERSION v${PACKAGE_XML_VERSION}
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
  GLOBAL_HOOK
)

ament_package(CONFIG_EXTRAS drake-extras.cmake)
