#pragma once
#include <exception>

class ConfigFileIsMissing: public std::exception{
public:
    const char* what() const noexcept override;
};

class ConfigFileIsEmpty: public std::exception{
public:
    const char* what() const noexcept override;
};

class IncorrectFileVersion: public std::exception{
public:
    const char* what() const noexcept override;
};
