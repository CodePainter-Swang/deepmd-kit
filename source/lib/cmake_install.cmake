# Install script for directory: /work/wangs/DeepMD-kit/deepmd-kit/source/lib

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/work/wangs/DeepMD-kit/deepmd-kit/source/build/deepmd_root")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdeepmd.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdeepmd.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdeepmd.so"
         RPATH "$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/libdeepmd.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdeepmd.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdeepmd.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdeepmd.so"
         OLD_RPATH ":::::::"
         NEW_RPATH "$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdeepmd.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/work/wangs/DeepMD-kit/deepmd-kit/source/lib/CMakeFiles/deepmd.dir/install-cxx-module-bmi-release.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/deepmd" TYPE FILE FILES
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/ComputeDescriptor.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/DeviceFunctor.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/SimulationRegion.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/SimulationRegion_Impl.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/coord.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/device.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/env_mat.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/errors.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/ewald.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/fmt_nlist.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/gelu.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/gpu_cuda.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/gpu_rocm.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/map_aparam.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/neighbor_list.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/pair_tab.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/prod_env_mat.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/prod_force.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/prod_force_grad.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/prod_virial.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/prod_virial_grad.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/region.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/soft_min_switch.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/soft_min_switch_force.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/soft_min_switch_force_grad.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/soft_min_switch_virial.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/soft_min_switch_virial_grad.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/switcher.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/tabulate.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/lib/include/utilities.h"
    )
endif()

