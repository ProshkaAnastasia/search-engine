#include "Configuration.h"

Configuration::Configuration(std::string _name, std::string _version, int _max_responses) 
                    : name(_name), version(_version), max_responses(_max_responses) {}

Configuration::Configuration() {}