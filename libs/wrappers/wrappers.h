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
    std::string get_name();
    int get_points();
    int get_awarded_points(); // returns NO_ASSIGNED_VAL if value was not assigned
    void update();
private:
    Assignment assignment_;
};

class CategoryWrapper
{
public:
    CategoryWrapper();
    CategoryWrapper(Category cat);
    std::string get_name();
    float get_weight();
    int get_points();         // returns NO_ASSIGNED_VAL if value was not assigned
    int get_awarded_points(); // returns NO_ASSIGNED_VAL if value was not assigned
    AssignmentWrapper get(std::string);
    void update();
    void add();
    void del(std::string assignment);
private:
    Category category_;
    std::unordered_map<std::string, AssignmentWrapper> assignments_;
};

class ClassWrapper
{
public:
    ClassWrapper();
    ClassWrapper(Class clss);
    std::string get_name();
    float get_grade(); // returns NO_ASSIGNED_VAL if value was not assigned
    CategoryWrapper get(std::string);
    void update();
    void add();
    void del(std::string category);
private:
    Class clss_;
    std::unordered_map<std::string, CategoryWrapper> categories_;
};

class QuarterWrapper
{
public:
    QuarterWrapper();
    QuarterWrapper(Quarter quarter);
    std::string get_date();
    float get_gpa(); // returns NO_ASSIGNED_VAL if value was not assigned
    ClassWrapper get(std::string);
    void update();
    void add();
    void del(std::string clss);
private:
    Quarter quarter_;
    std::unordered_map<std::string, ClassWrapper> classes_;
};

class SchoolWrapper
{
public:
    SchoolWrapper();
    SchoolWrapper(School school);
    std::string get_date(); // returns NO_ASSIGNED_VAL if value was not assigned
    float get_gpa();        // returns NO_ASSIGNED_VAL if value was not assigned
    QuarterWrapper get(std::string);
    void update();
    void add();
    void del(std::string quarter);
private:
    School school_;
    std::unordered_map<std::string, QuarterWrapper> quarters_;
};
#endif // GRADESYSTEM_WRAPPERS_WRAPPERS_H_
