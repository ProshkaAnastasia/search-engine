add_subdirectory(nlohmann_json)

include_directories(nlohmann_json)
include_directories(src include)

add_executable(${PROJECT_NAME} src/main.cpp include/ConverterJSON.h src/ConverterJSON.cpp)

target_include_directories(${PROJECT_NAME} PUBLIC src)
target_link_libraries(${PROJECT_NAME} nlohmann_json::nlohmann_json)