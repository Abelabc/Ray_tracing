//
// Created by flux_user on 2024/1/24.
//

#include "constant_medium.h"
#include "material.h"


constant_medium::constant_medium(shared_ptr<hittable> b, double d, shared_ptr<texture> a) :boundary(b), neg_inv_density(-1 / d)
{
    phase_function = make_shared<isotropic>(a);
}
 bool constant_medium::bounding_box(double t0, double t1, aabb& output_box) const{
    return boundary->bounding_box(t0, t1, output_box);
}
bool constant_medium::hit(const ray& r, double t_min, double t_max, hit_record& rec) const {
    // Print occasional samples when debugging. To enable, set enableDebug true.
    const bool enableDebug = false;
    const bool debugging = enableDebug && random_double() < 0.00001;

    hit_record rec1, rec2;

    //检查光线 r 是否与物体 boundary 发生交互，间隔是负无穷到正无穷
    if (!boundary->hit(r, -infinity, infinity, rec1))
        return false;

    //确定 r 和 boundary 有交互点 rec1 后，再次确定是否有第二个交互点 rec2。
    // 在这里，交互检测的起始时间点为第一个交互点的时间 rec1.t 后的一个微小时间单位 0.0001 （保证 rec2 在 rec1 后），结束时间点为正无穷。
    if (!boundary->hit(r, rec1.t+0.0001, infinity, rec2))
        return false;

    if (debugging) std::cerr << "\nt0=" << rec1.t << ", t1=" << rec2.t << '\n';

    if (rec1.t < t_min) rec1.t = t_min;
    if (rec2.t > t_max) rec2.t = t_max;

    if (rec1.t >= rec2.t)
        return false;

    if (rec1.t < 0)
        rec1.t = 0;
    //函数首先判断光线是否与物体的边界产生交互
    //计算实体部分的长度 distance_inside_boundary
    // 以及光线在实体中移动的距离 hit_distance
    const auto ray_length = r.direction().length();
    // 这一行计算了光线穿过物体的距离。(rec2.t - rec1.t) 是光线穿过物体所需的时间
    const auto distance_inside_boundary = (rec2.t - rec1.t) * ray_length;
    //乘积 hit_distance 就模拟了光线在物体内部实际前进的距离。
    const auto hit_distance = neg_inv_density * log(random_double());

    //如果 hit_distance 大于 distance_inside_boundary，说明光线没有穿过整个实体
    if (hit_distance > distance_inside_boundary)
        return false;

    rec.t = rec1.t + hit_distance / ray_length;
    rec.p = r.at(rec.t);

    if (debugging) {
        std::cerr << "hit_distance = " <<  hit_distance << '\n'
                  << "rec.t = " <<  rec.t << '\n'
                  << "rec.p = " <<  rec.p << '\n';
    }

    rec.normal = vec3(1,0,0);  // arbitrary
    rec.front_face = true;     // also arbitrary
    rec.mat_ptr = phase_function;

    return true;
}