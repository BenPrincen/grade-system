#include <boost/filesystem.hpp>
#include <ctime>
#include <fstream>
#include <iostream>
#include <random>

#include "../libs/class_system/class_system.pb.h"
#include "../libs/wrappers/wrappers.h"

#define DATA_DIR "../data"
#define PROTO_FILE_LOC "../data/school_info.proto"

using input_param = std::vector<std::string>::const_iterator;
using func_ptr = void (*)(input_param, input_param, SchoolWrapper &wrapper);

namespace fs = boost::filesystem;

// prototyping functions so the func_map can be properly initialized
void upd(input_param begin, input_param end, SchoolWrapper &wrapper);
void add(input_param begin, input_param end, SchoolWrapper &wrapper);
void del(input_param begin, input_param end, SchoolWrapper &wrapper);

std::unordered_map<std::string, func_ptr> func_map{
    {"update", &upd},
    {"add", &add},
    {"delete", &del}};

// main functions for updating the state of the school data
void upd(input_param begin, input_param end, SchoolWrapper &wrapper)
{
    std::cout << "called update" << std::endl;
    for(; begin != end; ++begin) {
        std::cout << *begin << std::endl;
    }
}

void add(input_param begin, input_param end, SchoolWrapper &wrapper)
{
    std::cout << "called add" << std::endl;
}

void del(input_param begin, input_param end, SchoolWrapper &wrapper)
{
    std::cout << "called delete" << std::endl;
}

// returns true if data retrieval was successful, false otherwise
bool retrieve_data(class_system::School &wrapper)
{
    fs::path proto_file_path(PROTO_FILE_LOC);
    if (fs::exists(proto_file_path))
    {
        std::fstream input(PROTO_FILE_LOC, std::ios::in | std::ios::binary);
        wrapper.ParseFromIstream(&input);
        return true;
    }
    return false;
}

std::vector<std::string> split(const std::string &line, const std::string &delimiters)
{
    std::vector<std::string> words;
    int end = 0;
    for (;;)
    {
        size_t start = line.find_first_not_of(delimiters, end);
        if (start == std::string::npos)
        {
            break;
        }
        end = line.find_first_of(delimiters, start);
        words.push_back(line.substr(start, end - start));
    }
    return words;
}

void interpreter(std::vector<std::string> line, SchoolWrapper &school)
{
    std::string command = line.front();
    auto it = func_map.find(command);
    if (it == func_map.end())
    {
        throw std::runtime_error("Invalid command\n");
    }
    else
    {
        auto line_it = ++(line.begin());
        func_ptr func = it->second;
        func(line_it, line.end(), school);
    }
}

bool parse_args(int argc, char **argv, SchoolWrapper &school)
{
    std::cout << "in parse args" << std::endl;
    if (argc > 1)
    {
        throw std::runtime_error("Usage: ./grader\n");
        return false;
    }
    for (;;)
    {
        std::string line;
        getline(std::cin, line);
        if (std::cin.eof())
            break;
        if (line.size() == 0)
            continue;
        for (;;)
        {
            int last = line.size() - 1;
            if (line[last] != '\\')
               break;
            line[last] = ' ';
            std::string contin;
            getline(std::cin, contin);
            if (std::cin.eof())
               break;
            line += contin;
            std::cout << line << std::endl;
        }
        std::vector<std::string> split_lines = split(line, " \t");
        if (split_lines.size() == 0)
        {
            continue;
        }
        if (split_lines.front() == "quit")
        {
            break;
        }
        std::cout << split_lines.front() << "." << std::endl;
        interpreter(split_lines, school);
    }
    return true;
}

int main(int argc, char **argv)
{
    class_system::School school;
    // regardless of whether the output if true or false
    // the program proceeds normally since information is
    // going to be updated, added, and deleted anyway
    if (!retrieve_data(school))
    {
        std::cout << "MESSAGE: data file doesn't exist in stored location" << std::endl;
    }
    SchoolWrapper wrapper(school);
    bool outcome = parse_args(argc, argv, wrapper);
    if (!outcome)
    {
        return EXIT_FAILURE;
    }
    return EXIT_SUCCESS;
}
