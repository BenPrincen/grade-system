#include <string>
#include <unordered_map>

#include "wrappers.h"

using namespace class_system;

// AssignmentWrapper
AssignmentWrapper::AssignmentWrapper() {}

AssignmentWrapper::AssignmentWrapper(Assignment assignment) : assignment_(assignment) {}

std::string AssignmentWrapper::get_name()
{
    return assignment_.name();
}

int AssignmentWrapper::get_points()
{
    return assignment_.points();
}

int AssignmentWrapper::get_awarded_points()
{
    if (assignment_.has_awarded_points())
    {
        return assignment_.awarded_points();
    }
    return NO_ASSIGNED_VAL;
}

// CategoryWrapper
CategoryWrapper::CategoryWrapper() {}

CategoryWrapper::CategoryWrapper(Category category) : category_(category)
{
    for (int i = 0; i < category.assignments_size(); i++)
    {
        AssignmentWrapper temp(category.assignments(i));
        std::string name = temp.get_name();
        std::pair<std::string, AssignmentWrapper> temp_pair(name, temp);
        assignments_.insert(temp_pair);
    }
}

std::string CategoryWrapper::get_name()
{
    return category_.name();
}

float CategoryWrapper::get_weight()
{
    return category_.weight();
}

int CategoryWrapper::get_points()
{
    if (category_.has_points())
    {
        return category_.points();
    }
    return NO_ASSIGNED_VAL;
}

int CategoryWrapper::get_awarded_points()
{
    if (category_.has_awarded_points())
    {
        return category_.awarded_points();
    }
    return NO_ASSIGNED_VAL;
}

AssignmentWrapper CategoryWrapper::get(std::string name) {
    return assignments_[name];
}

void CategoryWrapper::update() {

}

// ClassWrapper
ClassWrapper::ClassWrapper() {}

ClassWrapper::ClassWrapper(Class clss) : clss_(clss) {/* empty for now */}

std::string ClassWrapper::get_name()
{
    return clss_.name();
}

float ClassWrapper::get_grade()
{
    if (clss_.has_grade())
    {
        return clss_.grade();
    }
    return NO_ASSIGNED_VAL;
}
// QuarterWrapper
QuarterWrapper::QuarterWrapper() {}

QuarterWrapper::QuarterWrapper(Quarter quarter) : quarter_(quarter) {/* empty for now */}
std::string QuarterWrapper::get_date()
{
    return quarter_.date();
}

float QuarterWrapper::get_gpa()
{
    if (quarter_.has_gpa())
    {
        return quarter_.gpa();
    }
    return NO_ASSIGNED_VAL;
}
// SchoolWrapper
SchoolWrapper::SchoolWrapper() {}

SchoolWrapper::SchoolWrapper(School school) : school_(school) {}

std::string SchoolWrapper::get_date()
{
    if (school_.has_date())
    {
        return school_.date();
    }
    return std::to_string(NO_ASSIGNED_VAL);
}

float SchoolWrapper::get_gpa()
{
    if (school_.has_gpa())
    {
        return school_.gpa();
    }
    return NO_ASSIGNED_VAL;
}
