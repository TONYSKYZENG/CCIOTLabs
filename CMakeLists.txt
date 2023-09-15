
# (Automatically converted from project Makefile by convert_to_cmake.py.)

# The following lines of boilerplate have to be in your project's CMakeLists
# in this exact order for cmake to work correctly
cmake_minimum_required(VERSION 3.5)

set(EXTRA_COMPONENT_DIRS "$ENV{IDF_PATH}/examples/common_components/protocol_examples_common"
						 "${CMAKE_CURRENT_LIST_DIR}/esp-aws-iot/libraries/backoffAlgorithm"
						 "${CMAKE_CURRENT_LIST_DIR}/esp-aws-iot/libraries/coreMQTT"
						 "${CMAKE_CURRENT_LIST_DIR}/esp-aws-iot/libraries/common/posix_compat"
						 "${CMAKE_CURRENT_LIST_DIR}/ssd1306"
	)
include($ENV{IDF_PATH}/tools/cmake/project.cmake)
project(sutdwifi-aws)
target_add_binary_data(${CMAKE_PROJECT_NAME}.elf "main/certs/root_cert_auth.crt" TEXT)
target_add_binary_data(${CMAKE_PROJECT_NAME}.elf "main/certs/client.crt" TEXT)
target_add_binary_data(${CMAKE_PROJECT_NAME}.elf "main/certs/client.key" TEXT)