# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/tony/Platforms/esp/v4_4/esp-idf/components/bootloader/subproject"
  "/home/tony/projects/CCIOTLabs/build/bootloader"
  "/home/tony/projects/CCIOTLabs/build/bootloader-prefix"
  "/home/tony/projects/CCIOTLabs/build/bootloader-prefix/tmp"
  "/home/tony/projects/CCIOTLabs/build/bootloader-prefix/src/bootloader-stamp"
  "/home/tony/projects/CCIOTLabs/build/bootloader-prefix/src"
  "/home/tony/projects/CCIOTLabs/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/tony/projects/CCIOTLabs/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/tony/projects/CCIOTLabs/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
