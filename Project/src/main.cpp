#include <iostream>
#include "nlohmann/json.hpp"
#include <filesystem>
#include "ConverterJSON.h"
#include <vector>
#include "Exceptions.h"
#include "InvertedIndex.h"
#include <algorithm>
#include <fstream>

std::ostream& operator << (std::ostream &out, const Entry &e) {
        return out << "{" << e.doc_id << ", " << e.count << "}";
}

std::ostream& operator << (std::ostream &out, const std::vector <Entry> &vec){
    for (auto i = 0; i < vec.size(); i++){
        out << vec[i] << " ";
    }
    out << std::endl;
    return out;
}

std::ostream& operator << (std::ostream &out, const std::vector <std::vector <Entry>> &vec){
    for (auto i = 0; i < vec.size(); i++){
        out << vec[i] << std::endl;
    }
    return out;
}

int main(int, char**) {
    std::ofstream file("../../file.txt");
}
