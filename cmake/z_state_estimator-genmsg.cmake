# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "z_state_estimator: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iz_state_estimator:/home/ohrad/catkin_ws/src/z_state_estimator/msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(z_state_estimator_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ohrad/catkin_ws/src/z_state_estimator/msg/ZStateEst.msg" NAME_WE)
add_custom_target(_z_state_estimator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "z_state_estimator" "/home/ohrad/catkin_ws/src/z_state_estimator/msg/ZStateEst.msg" "std_msgs/Float32:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(z_state_estimator
  "/home/ohrad/catkin_ws/src/z_state_estimator/msg/ZStateEst.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/z_state_estimator
)

### Generating Services

### Generating Module File
_generate_module_cpp(z_state_estimator
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/z_state_estimator
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(z_state_estimator_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(z_state_estimator_generate_messages z_state_estimator_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ohrad/catkin_ws/src/z_state_estimator/msg/ZStateEst.msg" NAME_WE)
add_dependencies(z_state_estimator_generate_messages_cpp _z_state_estimator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(z_state_estimator_gencpp)
add_dependencies(z_state_estimator_gencpp z_state_estimator_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS z_state_estimator_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(z_state_estimator
  "/home/ohrad/catkin_ws/src/z_state_estimator/msg/ZStateEst.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/z_state_estimator
)

### Generating Services

### Generating Module File
_generate_module_eus(z_state_estimator
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/z_state_estimator
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(z_state_estimator_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(z_state_estimator_generate_messages z_state_estimator_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ohrad/catkin_ws/src/z_state_estimator/msg/ZStateEst.msg" NAME_WE)
add_dependencies(z_state_estimator_generate_messages_eus _z_state_estimator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(z_state_estimator_geneus)
add_dependencies(z_state_estimator_geneus z_state_estimator_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS z_state_estimator_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(z_state_estimator
  "/home/ohrad/catkin_ws/src/z_state_estimator/msg/ZStateEst.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/z_state_estimator
)

### Generating Services

### Generating Module File
_generate_module_lisp(z_state_estimator
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/z_state_estimator
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(z_state_estimator_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(z_state_estimator_generate_messages z_state_estimator_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ohrad/catkin_ws/src/z_state_estimator/msg/ZStateEst.msg" NAME_WE)
add_dependencies(z_state_estimator_generate_messages_lisp _z_state_estimator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(z_state_estimator_genlisp)
add_dependencies(z_state_estimator_genlisp z_state_estimator_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS z_state_estimator_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(z_state_estimator
  "/home/ohrad/catkin_ws/src/z_state_estimator/msg/ZStateEst.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/z_state_estimator
)

### Generating Services

### Generating Module File
_generate_module_nodejs(z_state_estimator
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/z_state_estimator
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(z_state_estimator_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(z_state_estimator_generate_messages z_state_estimator_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ohrad/catkin_ws/src/z_state_estimator/msg/ZStateEst.msg" NAME_WE)
add_dependencies(z_state_estimator_generate_messages_nodejs _z_state_estimator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(z_state_estimator_gennodejs)
add_dependencies(z_state_estimator_gennodejs z_state_estimator_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS z_state_estimator_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(z_state_estimator
  "/home/ohrad/catkin_ws/src/z_state_estimator/msg/ZStateEst.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/z_state_estimator
)

### Generating Services

### Generating Module File
_generate_module_py(z_state_estimator
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/z_state_estimator
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(z_state_estimator_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(z_state_estimator_generate_messages z_state_estimator_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ohrad/catkin_ws/src/z_state_estimator/msg/ZStateEst.msg" NAME_WE)
add_dependencies(z_state_estimator_generate_messages_py _z_state_estimator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(z_state_estimator_genpy)
add_dependencies(z_state_estimator_genpy z_state_estimator_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS z_state_estimator_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/z_state_estimator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/z_state_estimator
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(z_state_estimator_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(z_state_estimator_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/z_state_estimator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/z_state_estimator
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(z_state_estimator_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(z_state_estimator_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/z_state_estimator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/z_state_estimator
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(z_state_estimator_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(z_state_estimator_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/z_state_estimator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/z_state_estimator
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(z_state_estimator_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(z_state_estimator_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/z_state_estimator)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/z_state_estimator\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/z_state_estimator
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(z_state_estimator_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(z_state_estimator_generate_messages_py std_msgs_generate_messages_py)
endif()
