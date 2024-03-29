//
// Created by flux_user on 2024/1/18.
//
#include "hittable_list.h"
bool hittable_list::bounding_box(double t0, double t1, aabb& output_box)const
{
    if (objects.empty())
    {
        return false;

    }
    aabb temp_box;
    bool first_box = true;
    for (const auto &object:objects )
    {
        if (!object->bounding_box(t0,t1,temp_box))
        {
            return false;
        }
        output_box = first_box ? temp_box : aabb::surrounding_box(output_box, temp_box);
        first_box = false;
    }
    return true;

}
//list对象的hit
bool hittable_list::hit(const ray& r, double t_min, double t_max, hit_record& rec) const {
    hit_record temp_rec;
    bool hit_anything = false;
    auto closest_so_far = t_max;

    for (const auto& object : objects) {
        if (object->hit(r, t_min, closest_so_far, temp_rec)) {
            hit_anything = true;
            closest_so_far = temp_rec.t;
            rec = temp_rec;
        }
    }

    return hit_anything;
}