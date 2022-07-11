#include <iostream>
#include "nlohmann/json.hpp"
#include <filesystem>
#include "ConverterJSON.h"
#include <vector>

int main(int, char**) {
    Configuration conf;
    std::vector <std::string> fileNames = ConverterJSON::GetTextDocuments();
    conf = ConverterJSON::getConfig();
    
}
