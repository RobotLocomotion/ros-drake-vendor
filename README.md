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
