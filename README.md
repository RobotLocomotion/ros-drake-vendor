# Drake installation for ROS environments

The repository contains the sources for installing the
[Drake toolbox](http://drake.mit.edu) inside the [ROS](http://ros.org)
ecosystem. These sources are ready to be installed using the ROS
Buildfarm or any other ROS related build process.

These sources specifically install the Drake Toolbox software. It's important
to note that this is distinct from other code installations that may involve
ROS helpers or ROS wrappers for Drake.

# Installation process

The repository defines a ROS package named drake, which facilitates the
download of the Drake sources from its official repository. Subsequently, it
invokes the CMake build system within these sources to facilitate the
generation of a system installation for the toolbox.

# Docker testing

The `Dockerfile.cmake_dpkg_flags` can be used to simulate the build that the
ros_buildfarm will perform using calling the CMake building system with the
dpkg-buildflags typically used in the ROS build environment. To test it:

```
docker build -f Dockefile.cmake_dpkg_flags -t ros_drake_vendor_cmake .
docker run -i -t ros_drake_vendor_cmake /bin/bash
```
