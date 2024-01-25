//
// Created by flux_user on 2024/1/23.
//

#ifndef CPP1_TRANSLATE_H
#define CPP1_TRANSLATE_H
#include "hittable.h"
class translate : public hittable {
public:
    translate(shared_ptr<hittable> p, const vec3& displacement)
            : ptr(p), offset(displacement) {}

    virtual bool hit(const ray& r, double t_min, double t_max, hit_record& rec) const;
    virtual bool bounding_box(double t0, double t1, aabb& output_box) const;

public:
    shared_ptr<hittable> ptr;
    vec3 offset;
};
#endif //CPP1_TRANSLATE_H
