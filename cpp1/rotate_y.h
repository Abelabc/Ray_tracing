//
// Created by flux_user on 2024/1/23.
//

#ifndef CPP1_ROTATE_Y_H
#define CPP1_ROTATE_Y_H
#include "hittable.h"
class rotate_y : public hittable {
public:
    rotate_y(shared_ptr<hittable> p, double angle);
    virtual bool hit(const ray& r, double t_min, double t_max, hit_record& rec) const;
    virtual bool bounding_box(double t0, double t1, aabb& output_box) const {
        output_box = bbox;
        return hasbox;
    }

public:
    shared_ptr<hittable> ptr;
    double sin_theta;
    double cos_theta;
    bool hasbox;
    aabb bbox;
};
#endif //CPP1_ROTATE_Y_H
