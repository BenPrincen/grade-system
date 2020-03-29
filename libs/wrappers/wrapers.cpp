#include <string>
#include <unordered_map>

#include "wrappers.h"

using namespace class_system;

// AssignmentWrapper
AssignmentWrapper::AssignmentWrapper() {}

AssignmentWrapper::AssignmentWrapper(Assignment assignment) : assignment_(assignment) {}

int AssignmentWrapper::get_points()
{
    return assignment_.points();
}

std::string AssignmentWrapper::get_name() {
    return assignment_.name();
}

// ClassWrapper
ClassWrapper::ClassWrapper() {}

ClassWrapper::ClassWrapper(Class clss) : clss_(clss)
{
    for(int i = 0; i < clss_.assignments_size(); i++) {
        AssignmentWrapper assignment(clss_.assignments(i));
        assignments_[assignment.get_name()] = assignment;
    }
}

float ClassWrapper::get_gpa()
{
    if (clss_.has_gpa())
    {
        return clss_.gpa();
    }
    return NO_ASSIGNED_VAL;
}

AssignmentWrapper ClassWrapper::get_assignment(std::string name) {
    return assignments_[name];
}


// QuarterWrapper
QuarterWrapper::QuarterWrapper() {}

QuarterWrapper::QuarterWrapper(Quarter quarter) : quarter_(quarter) {/* empty for now */}

float QuarterWrapper::get_gpa()
{
    if (quarter_.has_gpa())
    {
        return quarter_.gpa();
    }
    return NO_ASSIGNED_VAL;
}

ClassWrapper QuarterWrapper::get_class(std::string name) {
    return classes_[name];
}

// SchoolWrapper
SchoolWrapper::SchoolWrapper() {}

SchoolWrapper::SchoolWrapper(School school) : school_(school) {}

float SchoolWrapper::get_gpa()
{
    if (school_.has_gpa())
    {
        return school_.gpa();
    }
    return NO_ASSIGNED_VAL;
}

QuarterWrapper SchoolWrapper::get_quarter(std::string name) {
    return quarters_[name];
}
