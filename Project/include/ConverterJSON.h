#include <fstream>
#include "nlohmann/json.hpp"
#include <filesystem>
#include <fstream>
#include <vector>
#include "Configuration.h"

class ConverterJSON{
private:
    static void checkConfigFile();
public: 
    ConverterJSON() = default;
    static std::vector <std::string> GetTextDocuments();
    static int GetResponsesLimit();
    static std::vector <std::string> GetRequests();
    static void putAnswer(std::vector <std::vector <std::pair <int, float>>> answers);
    static Configuration getConfig();
};