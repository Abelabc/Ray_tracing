//
// Created by flux_user on 2024/1/18.
//

#ifndef CPP1_AABB_H
#define CPP1_AABB_H
#include "ray.h"
class aabb {
public:
    aabb() = default;
    aabb(const vec3& a, const vec3& b) { _min = a; _max = b;}

    vec3 min() const {return _min; }
    vec3 max() const {return _max; }

    bool hit(const ray& r, double tmin, double tmax) const {
        for (int a = 0; a < 3; a++) {
            auto invD = 1/r.direction()[a];
            auto t0 = (min()[a] - r.origin()[a])*invD;
            auto t1 = (max()[a] - r.origin()[a])*invD;
            if(invD < 0.f){
                std::swap(t0,t1);
            }
            tmin = t0>tmin?t0:tmin;
            tmax = t1<tmax?t1:tmax;
            if(tmax<tmin)
                return false;
        }
        return true;
    }
    //接收`time1`和`time2`, 包围盒会把在这个时间区间内运动的物体完整的包起来。
    static aabb surrounding_box(aabb box0, aabb box1) {
        vec3 small(ffmin(box0.min().x(), box1.min().x()),
                   ffmin(box0.min().y(), box1.min().y()),
                   ffmin(box0.min().z(), box1.min().z()));
        vec3 big  (ffmax(box0.max().x(), box1.max().x()),
                   ffmax(box0.max().y(), box1.max().y()),
                   ffmax(box0.max().z(), box1.max().z()));
        return aabb(small,big);
    }
    vec3 _min;
    vec3 _max;
};
#endif //CPP1_AABB_H
