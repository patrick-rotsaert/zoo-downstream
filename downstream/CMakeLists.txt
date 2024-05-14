# This file is added as a subdirectory of ../subdir/, ...
# The PROJECT_NAME is already set

add_executable(${PROJECT_NAME} downstream.cpp)

target_link_libraries(${PROJECT_NAME} PRIVATE zoo::bitcask)
target_link_libraries(${PROJECT_NAME} PRIVATE zoo::fs_local)
target_link_libraries(${PROJECT_NAME} PRIVATE zoo::fs_sftp)
target_link_libraries(${PROJECT_NAME} PRIVATE zoo::spider)
target_link_libraries(${PROJECT_NAME} PRIVATE zoo::squid_postgresql)
target_link_libraries(${PROJECT_NAME} PRIVATE zoo::squid_mysql)
target_link_libraries(${PROJECT_NAME} PRIVATE zoo::squid_sqlite)

target_compile_features(${PROJECT_NAME} PRIVATE cxx_std_20)

add_custom_command(
	TARGET ${PROJECT_NAME} POST_BUILD
	COMMAND $<TARGET_FILE:${PROJECT_NAME}>
)
