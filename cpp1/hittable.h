//hittable.h
#ifndef HITTABLE_H
#define HITTABLE_H

//#include "ray.h"
#include "rtweekend.h"
class material;

struct hit_record {
    vec3 p;//球面上的点
    vec3 normal;//从球中心指向该点的法向量归一化
    shared_ptr<material>mat_ptr;
    double t;//对应的t
    bool front_face;//判断是否球面法向量是和入射方向相反
    inline void set_face_normal(const ray& r, const vec3& outward_normal) {
        front_face = dot(r.direction(), outward_normal) < 0;
        //ray在里面需要-
        normal = front_face ? outward_normal :-outward_normal;
    }
};

class hittable {
public:
    virtual bool hit(const ray& r, double t_min, double t_max, hit_record& rec) const = 0;
};

#endif