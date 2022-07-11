#include "ConverterJSON.h"
#include <iostream>
#include <exception>
#include <cstdlib>

void ConverterJSON::checkConfigFile(){
    std::fstream file("config.json");
    if (!file.is_open()){
        throw ConfigFileIsMissing();
    }
    long fileSize;
    file.seekg(0, std::ios::end);
    fileSize = file.tellg();
    if (fileSize == 0){
        throw ConfigFileIsEmpty();
    }
    else{
        file.seekg(0, std::ios::beg);
        nlohmann::json j;
        file >> j;
        if (j.find("config") == j.end()){
            throw ConfigFileIsEmpty();
        }
        else if(j["config"]["version"] != VERSION){
            throw IncorrectFileVersion();
        }
    }
}

std::vector <std::string> ConverterJSON::GetTextDocuments(){
    std::vector <std::string> documents;
    checkConfigFile();
    /*try{
        checkConfigFile();
    }
    catch(ConfigFileIsMissing &e){
        std::cerr << e.what() << std::endl;
        return documents;
    }
    catch(ConfigFileIsEmpty &e){
        std::cerr << e.what() << std::endl;
        return documents;
    }*/
    std::fstream configurationFile("config.json");
    nlohmann::json config;
    configurationFile >> config;
    for (auto i : config["files"]){
        documents.push_back(i);
    }
    return documents;
}

Configuration ConverterJSON::getConfig(){
    checkConfigFile();
    std::fstream configurationFile("config.json");
    nlohmann::json config;
    configurationFile >> config;
    return {config["config"]["name"], config["config"]["version"], config["config"]["max_responses"]};
}
