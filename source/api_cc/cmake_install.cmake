# Install script for directory: /work/wangs/DeepMD-kit/deepmd-kit/source/api_cc

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdeepmd_cc.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdeepmd_cc.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdeepmd_cc.so"
         RPATH "$ORIGIN:/work/wangs/DeepMD-kit/tensorflow_root/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/work/wangs/DeepMD-kit/deepmd-kit/source/api_cc/libdeepmd_cc.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdeepmd_cc.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdeepmd_cc.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdeepmd_cc.so"
         OLD_RPATH "/work/wangs/DeepMD-kit/tensorflow_root/lib:/work/wangs/DeepMD-kit/deepmd-kit/source/op:/work/wangs/DeepMD-kit/deepmd-kit/source/lib:"
         NEW_RPATH "$ORIGIN:/work/wangs/DeepMD-kit/tensorflow_root/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdeepmd_cc.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/work/wangs/DeepMD-kit/deepmd-kit/source/api_cc/CMakeFiles/deepmd_cc.dir/install-cxx-module-bmi-release.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/deepmd" TYPE FILE FILES
    "/work/wangs/DeepMD-kit/deepmd-kit/source/api_cc/include/AtomMap.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/api_cc/include/DataModifier.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/api_cc/include/DeepPot.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/api_cc/include/DeepTensor.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/api_cc/include/common.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/api_cc/include/custom_op.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/api_cc/version.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdeepmd_cc_low.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdeepmd_cc_low.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdeepmd_cc_low.so"
         RPATH "$ORIGIN:/work/wangs/DeepMD-kit/tensorflow_root/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/work/wangs/DeepMD-kit/deepmd-kit/source/api_cc/libdeepmd_cc_low.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdeepmd_cc_low.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdeepmd_cc_low.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdeepmd_cc_low.so"
         OLD_RPATH "/work/wangs/DeepMD-kit/tensorflow_root/lib:/work/wangs/DeepMD-kit/deepmd-kit/source/op:/work/wangs/DeepMD-kit/deepmd-kit/source/lib:"
         NEW_RPATH "$ORIGIN:/work/wangs/DeepMD-kit/tensorflow_root/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdeepmd_cc_low.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/work/wangs/DeepMD-kit/deepmd-kit/source/api_cc/CMakeFiles/deepmd_cc_low.dir/install-cxx-module-bmi-release.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/deepmd" TYPE FILE FILES
    "/work/wangs/DeepMD-kit/deepmd-kit/source/api_cc/include/AtomMap.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/api_cc/include/DataModifier.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/api_cc/include/DeepPot.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/api_cc/include/DeepTensor.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/api_cc/include/common.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/api_cc/include/custom_op.h"
    "/work/wangs/DeepMD-kit/deepmd-kit/source/api_cc/version.h"
    )
endif()

