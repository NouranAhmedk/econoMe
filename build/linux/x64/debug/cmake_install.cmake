# Install script for directory: /run/media/broly/projects/gamepro/flutter/econoMe/linux

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/run/media/broly/projects/gamepro/flutter/econoMe/build/linux/x64/debug/bundle")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/nix/store/n37gxbg343hxin3wdryx092mz2dkafy8-clang-wrapper-16.0.6/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  
  file(REMOVE_RECURSE "/run/media/broly/projects/gamepro/flutter/econoMe/build/linux/x64/debug/bundle/")
  
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/run/media/broly/projects/gamepro/flutter/econoMe/build/linux/x64/debug/bundle/econome" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/run/media/broly/projects/gamepro/flutter/econoMe/build/linux/x64/debug/bundle/econome")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/run/media/broly/projects/gamepro/flutter/econoMe/build/linux/x64/debug/bundle/econome"
         RPATH "$ORIGIN/lib")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/run/media/broly/projects/gamepro/flutter/econoMe/build/linux/x64/debug/bundle/econome")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/run/media/broly/projects/gamepro/flutter/econoMe/build/linux/x64/debug/bundle" TYPE EXECUTABLE FILES "/run/media/broly/projects/gamepro/flutter/econoMe/build/linux/x64/debug/intermediates_do_not_run/econome")
  if(EXISTS "$ENV{DESTDIR}/run/media/broly/projects/gamepro/flutter/econoMe/build/linux/x64/debug/bundle/econome" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/run/media/broly/projects/gamepro/flutter/econoMe/build/linux/x64/debug/bundle/econome")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/run/media/broly/projects/gamepro/flutter/econoMe/build/linux/x64/debug/bundle/econome"
         OLD_RPATH "/run/media/broly/projects/gamepro/flutter/econoMe/linux/flutter/ephemeral:/nix/store/k3i7m5ch2b250jd4q214gx5rraaqlaid-gtk+3-3.24.38/lib:/nix/store/d2fpx4lmwy88gsm3vivw4va2s3gxg73b-pango-1.50.14/lib:/nix/store/m13pv5dfjn4cj0qxh77s4d1ykb10d76a-harfbuzz-7.3.0/lib:/nix/store/7g5flvhw7swfhvz5ff0bwpvk13c2za24-at-spi2-core-2.48.3/lib:/nix/store/qf6yzardv1qaacbl28l4k8r5n0nbqji9-cairo-1.18.0/lib:/nix/store/4c93051695x3iyisy7vd6d0w3j4w43xh-gdk-pixbuf-2.42.10/lib:/nix/store/7wkspba8d5i28bw0jfxyi3c70wrw2512-glib-2.76.4/lib:"
         NEW_RPATH "$ORIGIN/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/nix/store/n37gxbg343hxin3wdryx092mz2dkafy8-clang-wrapper-16.0.6/bin/strip" "$ENV{DESTDIR}/run/media/broly/projects/gamepro/flutter/econoMe/build/linux/x64/debug/bundle/econome")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/run/media/broly/projects/gamepro/flutter/econoMe/build/linux/x64/debug/bundle/data/icudtl.dat")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/run/media/broly/projects/gamepro/flutter/econoMe/build/linux/x64/debug/bundle/data" TYPE FILE FILES "/run/media/broly/projects/gamepro/flutter/econoMe/linux/flutter/ephemeral/icudtl.dat")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/run/media/broly/projects/gamepro/flutter/econoMe/build/linux/x64/debug/bundle/lib/libflutter_linux_gtk.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/run/media/broly/projects/gamepro/flutter/econoMe/build/linux/x64/debug/bundle/lib" TYPE FILE FILES "/run/media/broly/projects/gamepro/flutter/econoMe/linux/flutter/ephemeral/libflutter_linux_gtk.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  
  file(REMOVE_RECURSE "/run/media/broly/projects/gamepro/flutter/econoMe/build/linux/x64/debug/bundle/data/flutter_assets")
  
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/run/media/broly/projects/gamepro/flutter/econoMe/build/linux/x64/debug/bundle/data/flutter_assets")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/run/media/broly/projects/gamepro/flutter/econoMe/build/linux/x64/debug/bundle/data" TYPE DIRECTORY FILES "/run/media/broly/projects/gamepro/flutter/econoMe/build//flutter_assets")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/run/media/broly/projects/gamepro/flutter/econoMe/build/linux/x64/debug/flutter/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/run/media/broly/projects/gamepro/flutter/econoMe/build/linux/x64/debug/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
