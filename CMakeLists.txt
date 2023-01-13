cmake_minimum_required(VERSION 3.8)
project(interfaces_pkg_template)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)

# Dependency used in a custom message
find_package(example_interfaces REQUIRED)

set(msg_files
  "msg/CustomEmpty.msg"
  "msg/CustomSimple.msg"
  "msg/CustomComplex.msg"
)

set(srv_files
  "srv/CustomEmpty.srv"
  "srv/CustomSimple.srv"
  "srv/CustomComplex.srv"
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  ${srv_files}
  DEPENDENCIES example_interfaces
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()
