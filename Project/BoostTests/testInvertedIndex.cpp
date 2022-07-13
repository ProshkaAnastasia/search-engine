#include "InvertedIndex.h"
#include <boost/test/unit_test.hpp>
#include <fstream>

#define BOOST_TEST_MODULE testInvertedJSON

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

BOOST_AUTO_TEST_SUITE(testGetContent)

BOOST_AUTO_TEST_CASE(testGetContent1){
    InvertedIndex index;
    std::vector <std::string> filePath = {"/Users/anastasiapronina/Desktop/Search-Engine/Files/files2/file1.txt"};
    std::vector <std::string> content = {"london is the capital of great britain"};
    auto result = index.getContent(filePath);
    BOOST_CHECK_EQUAL_COLLECTIONS(result.begin(), result.end(), content.begin(), content.end());
}

BOOST_AUTO_TEST_CASE(testGetContent2){
    InvertedIndex index;
    std::vector <std::string> filePath = {"/Users/anastasiapronina/Desktop/Search-Engine/Files/files2/file2.txt"};
    std::vector <std::string> content = {"big ben is the nickname for the great bell of the striking clock"};
    auto result = index.getContent(filePath);
    BOOST_CHECK_EQUAL_COLLECTIONS(result.begin(), result.end(), content.begin(), content.end());
}

BOOST_AUTO_TEST_SUITE_END()

BOOST_AUTO_TEST_SUITE(testUpdateDocumentBase)

void testInvertedIndexFunctionality(const std::vector <std::string> &contents,
                                    const std::vector <std::string> &requests,
                                    std::vector<std::vector<Entry>> expected){
    InvertedIndex index;
    index.UpdateDocumentBase(contents);
    std::vector <std::vector <Entry>> answer;
    for (auto i : requests){
        answer.push_back(index.GetWordCount(i));
    }
    BOOST_CHECK_EQUAL_COLLECTIONS(expected.begin(), expected.end(), answer.begin(), answer.end());
}

BOOST_AUTO_TEST_CASE(testUpdateDocumentBase1){
    std::vector <std::string> contents = {
        "london is the capital of great britain",
        "big ben is the nickname for the Great bell of the striking clock"
    };
    std::vector <std::string> requests = {"london", "the"};
    std::vector <std::vector <Entry>> expected = {
        {{0, 1}},
        {{0, 1}, {1, 3}}
    };
    testInvertedIndexFunctionality(contents, requests, expected);
}

BOOST_AUTO_TEST_CASE(testUpdateDocumentBase2){
    std::vector <std::string> contents = {
        "milk milk milk milk water water water",
        "milk water water",
        "milk milk milk milk milk water water water water water", 
        "americano cappuccino"
    };
    std::vector <std::string> requests = {"milk", "water", "cappuccino"};
    std::vector <std::vector <Entry>> expected = {
        {{0, 4}, {1, 1}, {2, 5}},
        {{0, 3}, {1, 2}, {2, 5}},
        {{3, 1}}
    };
    testInvertedIndexFunctionality(contents, requests, expected);
}

BOOST_AUTO_TEST_CASE(testUpdateDocumentBase3){
    std::vector <std::string> contents = {
        "a b c d e f g h i j k l",
        "statement"
    };
    std::vector <std::string> requests = {"m", "statement"};
    std::vector <std::vector <Entry>> expected = {
        {},
        {{1, 1}}
    };
    testInvertedIndexFunctionality(contents, requests, expected);
}

BOOST_AUTO_TEST_SUITE_END()