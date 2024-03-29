//rtweekend.h
#ifndef RTWEEKEND_H
#define RTWEEKEND_H
// Common Headers
#include "vec3.h"
#include <cmath>
#include <cstdlib>
#include <limits>
#include <memory>
#include <cstdlib>
#include <random>


// Usings

using std::shared_ptr;
using std::make_shared;

// Constants

const double infinity = std::numeric_limits<double>::infinity();
const double pi = 3.1415926535897932385;

// Utility Functions

inline double degrees_to_radians(double degrees) {
    return degrees * pi / 180;
}

inline double ffmin(double a, double b) { return a <= b ? a : b; }
inline double ffmax(double a, double b) { return a >= b ? a : b; }


#endif