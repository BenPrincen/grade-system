#ifndef GRADESYSTEM_WRAPPERS_WRAPPERS_H_
#define GRADESYSTEM_WRAPPERS_WRAPPERS_H_

#include <unordered_map>

#include "../class_system/class_system.pb.h"

#define NO_ASSIGNED_VAL -1

using namespace class_system;

class AssignmentWrapper
{
public:
    AssignmentWrapper();
    AssignmentWrapper(Assignment assignment);
    int get_points();
    std::string get_name();

private:
    Assignment assignment_;
};

class ClassWrapper
{
public:
    ClassWrapper();
    ClassWrapper(Class clss);
    float get_gpa(); // returns NO_ASSIGNED_VAL if value was not assigned
    std::string get_name();
    AssignmentWrapper get_assignment(std::string);

private:
    Class clss_;
    std::unordered_map<std::string, AssignmentWrapper> assignments_;
};

class QuarterWrapper
{
public:
    QuarterWrapper();
    QuarterWrapper(Quarter quarter);
    float get_gpa(); // returns NO_ASSIGNED_VAL if value was not assigned
    ClassWrapper get_class(std::string);

private:
    Quarter quarter_;
    std::unordered_map<std::string, ClassWrapper> classes_;
};

class SchoolWrapper
{
public:
    SchoolWrapper();
    SchoolWrapper(School school);
    float get_gpa(); // returns NO_ASSIGNED_VAL if value was not assigned
    QuarterWrapper get_quarter(std::string);

private:
    School school_;
    std::unordered_map<std::string, QuarterWrapper> quarters_;
};

#endif // GRADESYSTEM_WRAPPERS_WRAPPERS_H_
