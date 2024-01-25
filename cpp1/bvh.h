//
// Created by flux_user on 2024/1/18.
//

#ifndef CPP1_BVH_H
#define CPP1_BVH_H
#include "hittable.h"
#include "hittable_list.h"
class bvh_node : public hittable {
public:
    bvh_node();

    bvh_node(hittable_list& list, double time0, double time1)
            : bvh_node(list.objects, 0, list.objects.size(), time0, time1)
    {}

    bvh_node(std::vector<shared_ptr<hittable>>& objects,
            size_t start, size_t end, double time0, double time1);

    bool hit(const ray& r, double tmin, double tmax, hit_record& rec) const override;
    bool bounding_box(double t0, double t1, aabb& output_box) const override;

public:
    shared_ptr<hittable> left;
    shared_ptr<hittable> right;
    aabb box;
};


#endif //CPP1_BVH_H
