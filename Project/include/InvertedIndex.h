#pragma once
#include <cstdio>
#include <vector>
#include <map>
#include "ConverterJSON.h"
#include <iostream>

struct Entry{
    size_t doc_id;
    int count;
    Entry () {}
    Entry (size_t _id, int _count) : doc_id(_id), count(_count) {}
    bool operator ==(const Entry& other) const{
        return (doc_id == other.doc_id && count == other.count);
    }
    bool operator !=(const Entry &other) const{
        return (doc_id != other.doc_id || count != other.count);
    }
    bool operator ==(const int &other) const{
        return (doc_id == other);
    }
    bool operator > (const Entry &other) const{
        if (doc_id == other.doc_id){
            return count > other.count;
        }
        else {
            return doc_id > other.doc_id;
        }
    }
};

class InvertedIndex{
public:
    InvertedIndex() = default;
    void UpdateDocumentBase(std::vector<std::string> input_docs);
    std::vector <Entry> GetWordCount(const std::string &word);
    std::vector <std::string> getContent(std::vector <std::string> filePath);
private:
    std::vector <std::string> docs;
    std::map <std::string, std::vector <Entry>> freq_dictionary;
};
