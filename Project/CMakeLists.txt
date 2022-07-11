add_subdirectory(nlohmann_json)

include_directories(nlohmann_json)
include_directories(src include configuration)

add_executable(${PROJECT_NAME} src/main.cpp include/ConverterJSON.h 
                src/ConverterJSON.cpp include/Configuration.h 
                src/Configuration.cpp src/Exceptions.cpp include/Exceptions.h)

configure_file(configuration/config.h.in ${CMAKE_CURRENT_SOURCE_DIR}/configuration/config.h @ONLY)

target_include_directories(${PROJECT_NAME} PUBLIC src)
target_link_libraries(${PROJECT_NAME} nlohmann_json::nlohmann_json)