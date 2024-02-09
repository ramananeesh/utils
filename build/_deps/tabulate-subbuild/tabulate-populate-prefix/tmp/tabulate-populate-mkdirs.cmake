# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/scratchSSD/aneeshr/utils/build/_deps/tabulate-src"
  "/scratchSSD/aneeshr/utils/build/_deps/tabulate-build"
  "/scratchSSD/aneeshr/utils/build/_deps/tabulate-subbuild/tabulate-populate-prefix"
  "/scratchSSD/aneeshr/utils/build/_deps/tabulate-subbuild/tabulate-populate-prefix/tmp"
  "/scratchSSD/aneeshr/utils/build/_deps/tabulate-subbuild/tabulate-populate-prefix/src/tabulate-populate-stamp"
  "/scratchSSD/aneeshr/utils/build/_deps/tabulate-subbuild/tabulate-populate-prefix/src"
  "/scratchSSD/aneeshr/utils/build/_deps/tabulate-subbuild/tabulate-populate-prefix/src/tabulate-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/scratchSSD/aneeshr/utils/build/_deps/tabulate-subbuild/tabulate-populate-prefix/src/tabulate-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/scratchSSD/aneeshr/utils/build/_deps/tabulate-subbuild/tabulate-populate-prefix/src/tabulate-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
