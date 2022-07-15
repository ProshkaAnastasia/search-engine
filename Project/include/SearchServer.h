#pragma once
#include "InvertedIndex.h"
#include <cstdio>
#include <vector>

struct RelativeIndex{
    size_t doc_id;
    float rank;

    bool operator ==(const RelativeIndex &other){
        return (doc_id == other.doc_id && rank == other.rank);
    }
};

class SearchServer{
public:
    SearchServer (InvertedIndex &_index);
    std::vector <std::vector <RelativeIndex>> search (const std::vector <std::string> &queries_input);
private:
    InvertedIndex index;
};