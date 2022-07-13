#include <iostream>
#include "nlohmann/json.hpp"
#include <filesystem>
#include "ConverterJSON.h"
#include <vector>
#include "Exceptions.h"
#include "InvertedIndex.h"
#include <algorithm>

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
    InvertedIndex i;
    i.UpdateDocumentBase(i.getContent(ConverterJSON::GetTextDocuments()));
    std::cout << i.GetWordCount("milk");
    std::cout << i.GetWordCount("water");
    std::cout << i.GetWordCount("cappuccino");
    std::vector <Entry> example = {{0, 3}, {3, 6}, {5, 3}, {1, 3}, {2, 1}};
    return 0;
}
