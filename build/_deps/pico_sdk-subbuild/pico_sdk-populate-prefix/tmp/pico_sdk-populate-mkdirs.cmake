# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/workspaces/rp2040-dac/build/_deps/pico_sdk-src"
  "/workspaces/rp2040-dac/build/_deps/pico_sdk-build"
  "/workspaces/rp2040-dac/build/_deps/pico_sdk-subbuild/pico_sdk-populate-prefix"
  "/workspaces/rp2040-dac/build/_deps/pico_sdk-subbuild/pico_sdk-populate-prefix/tmp"
  "/workspaces/rp2040-dac/build/_deps/pico_sdk-subbuild/pico_sdk-populate-prefix/src/pico_sdk-populate-stamp"
  "/workspaces/rp2040-dac/build/_deps/pico_sdk-subbuild/pico_sdk-populate-prefix/src"
  "/workspaces/rp2040-dac/build/_deps/pico_sdk-subbuild/pico_sdk-populate-prefix/src/pico_sdk-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/workspaces/rp2040-dac/build/_deps/pico_sdk-subbuild/pico_sdk-populate-prefix/src/pico_sdk-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/workspaces/rp2040-dac/build/_deps/pico_sdk-subbuild/pico_sdk-populate-prefix/src/pico_sdk-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
