//
// Created by flux_user on 2024/1/17.
//

#ifndef CPP1_MOVING_SPHERE_H
#define CPP1_MOVING_SPHERE_H
#include "hittable.h"
#include "aabb.h"
class moving_sphere : public hittable {
public:
    moving_sphere() {}
    moving_sphere(
            vec3 cen0, vec3 cen1, double t0, double t1, double r, shared_ptr<material> m)
            : center0(cen0), center1(cen1), time0(t0), time1(t1), radius(r), mat_ptr(m)
    {};

    virtual bool hit(const ray& r, double tmin, double tmax, hit_record& rec) const;
    virtual bool bounding_box(double t0, double t1, aabb& output_box) const;
    vec3 center(double time) const;

public:
    vec3 center0, center1;
    double time0, time1;
    double radius;
    shared_ptr<material> mat_ptr;
};


#endif //CPP1_MOVING_SPHERE_H
