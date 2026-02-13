# LICENSE: Apache License 2.0
# Copyright (c) Hardy Simpson
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#/

cmake_minimum_required(VERSION 3.12)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

project(zlog VERSION 1.2.18 LANGUAGES C)

set(CMAKE_MODULE_PATH ${zlog_SOURCE_DIR}/cmake)

option(ZLOG_BUILD_TOOLS "Build zlog-chk-conf" ON)

include(GNUInstallDirs)
include(CMakePackageConfigHelpers)

set(Need_THREAD 1)

if (WIN32)
    set(Need_UNIXEM 1)
endif ()

include(cmake/LoadLibraries.cmake)

add_subdirectory(src)

if (UNIT_TEST)
    enable_testing()
    add_subdirectory(test)
endif ()
