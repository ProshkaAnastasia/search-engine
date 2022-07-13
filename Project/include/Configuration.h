#pragma once
#include <string>

class Configuration{
    std::string name;
    std::string version;
    int max_responses = 5;
public:
    Configuration();
    Configuration (std::string _name, std::string _version, int _max_responses);
    std::string getName();
    std::string getVersion();
    int getMaxResponses();
};