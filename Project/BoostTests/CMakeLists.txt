set(Boost_USE_STATIC_LIBS OFF)
find_package(Boost REQUIRED COMPONENTS unit_test_framework)
include_directories(${Boost_INCLUDE_DIRS})

add_executable(Boost_Tests_run testConverterJSON.cpp testInvertedIndex.cpp ../src/InvertedIndex.cpp ../include/InvertedIndex.h)
include_directories(../nlohmann_json ../configuration ../src ../include)
target_link_libraries(Boost_Tests_run ${Boost_LIBRARIES} nlohmann_json::nlohmann_json)
