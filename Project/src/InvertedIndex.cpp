#include "InvertedIndex.h"
#include <thread>
#include <fstream>
#include <mutex>
#include <sstream>
#include <algorithm>
#include <memory>

std::mutex lockDictionary;
std::mutex lockContent;

void fillCollection(std::string word, int docNumber, std::map<std::string, std::vector <Entry>> &dictionary){
    size_t id = docNumber;
    lockDictionary.lock();
    if (dictionary.find(word) == dictionary.end()){
        dictionary[word] = {{id, 1}};
        lockDictionary.unlock();
        return;
    }
    auto j = std::find(dictionary[word].begin(), dictionary[word].end(), id);
    if (j == dictionary[word].end()){
        dictionary[word].emplace_back(id, 1);
    }
    else{
        j->count++;
    }
    lockDictionary.unlock();
}

void Indexing(std::string content, int docNumber, 
                std::map<std::string, std::vector <Entry>> &dictionary){
    std::string word;
    size_t id = docNumber;
    std::stringstream stream;
    stream << content;
    std::mutex lockDictionary;
    while (stream >> word){
        //lockDictionary.lock();
        fillCollection(word, docNumber, dictionary);
        //lockDictionary.unlock();
    }
    
}

void fileTreatment(std::string path, int id, std::vector <std::string> &content){
    std::fstream file(path);
    if (!file.is_open()){
        return;
    }
    std::string word;
    while (!file.eof()){
        file >> word;
        lockContent.lock();
        content[id] += word + " ";
        lockContent.unlock();
    }
    content[id].pop_back();
}

std::vector <std::string> InvertedIndex::getContent(std::vector <std::string> filePath){
    std::vector <std::thread> threads;
    std::vector <std::string> content(filePath.size());
    for (auto i = 0; i < filePath.size(); i++){
        threads.emplace_back(std::thread(fileTreatment, filePath[i], i, std::ref(content)));
    }
    for (auto i = 0; i < filePath.size(); i++){
        if (threads[i].joinable()){
            threads[i].join();
        }
    }
    return content;
}

void InvertedIndex::UpdateDocumentBase(std::vector <std::string> input_doc){
    std::map <std::string, std::vector <Entry>> dictionary;
    std::vector <std::thread> threads;
    for (auto i = 0; i < input_doc.size(); i++){
        threads.emplace_back(std::thread (Indexing, input_doc[i], i, std::ref(dictionary)));
    }
    for (auto i = 0; i < input_doc.size(); i++){
        if (threads[i].joinable())
            threads[i].join();
    }
    for (auto i = dictionary.begin(); i != dictionary.end(); i++){
        std::sort(i->second.begin(), i->second.end(), [](const Entry &a, const Entry &b){
            return b > a;
        });
    }
    freq_dictionary = dictionary;
}

std::vector <Entry> InvertedIndex::GetWordCount(const std::string &word){
    return freq_dictionary[word];
}

