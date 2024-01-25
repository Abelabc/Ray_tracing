//
// Created by flux_user on 2024/1/24.
//

#ifndef CPP_CONSTANT_MEDIUM_H
#define CPP_CONSTANT_MEDIUM_H
#include "hittable.h"
#include "material.h"
#include "texture.h"

class constant_medium : public hittable {
public:
    constant_medium(shared_ptr<hittable> b, double d, shared_ptr<texture> a);

    virtual bool hit(const ray& r, double t_min, double t_max, hit_record& rec) const;

    virtual bool bounding_box(double t0, double t1, aabb& output_box) const;

public:
    //boundary: 定义了光线可以穿过的物体边界
    shared_ptr<hittable> boundary;
    //phase_function: 定义光线在介质中的散射函数。
    shared_ptr<material> phase_function;
    //neg_inv_density: 一个负数，代表了介质密度的倒数。
    double neg_inv_density;
};
#endif //CPP_CONSTANT_MEDIUM_H
