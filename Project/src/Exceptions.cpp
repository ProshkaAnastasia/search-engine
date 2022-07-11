#include "Exceptions.h"

const char* ConfigFileIsMissing::what() const noexcept {
    return "Config file is missing. /n";
}
const char* ConfigFileIsEmpty::what() const noexcept {
    return "Config file is empty. /n";
}
const char* IncorrectFileVersion::what() const noexcept {
    return "Config.json has incorrect file version. /n";
}