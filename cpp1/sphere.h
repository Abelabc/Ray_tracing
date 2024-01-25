//sphere.h
#ifndef SPHERE_H
#define SPHERE_H

#include "hittable.h"
void get_sphere_uv(const vec3& p, double& u, double& v);
class sphere: public hittable{
public:
    sphere() {}
    sphere(vec3 cen, double r, shared_ptr<material>m) : center(cen), radius(r), mat_ptr(m) {}

    virtual bool hit(const ray& r, double tmin, double tmax, hit_record& rec) const;
    virtual bool bounding_box(double t0, double t1, aabb& output_box) const;
public:
    vec3 center;
    double radius;
    shared_ptr<material>mat_ptr;
};


#endif