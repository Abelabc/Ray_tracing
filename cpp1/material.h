//
// Created by flux_user on 2024/1/13.
//

#ifndef MATERIAL_H
#define MATERIAL_H
#include "rtweekend.h"
struct hit_record;
class material {
public:
    virtual bool scatter(
            const ray& r_in, const hit_record& rec, vec3& attenuation, ray& scattered
    ) const = 0;
};

class lambertian : public material {
public:
    lambertian(const vec3& a) : albedo(a) {}

    virtual bool scatter(
            const ray& r_in, const hit_record& rec, vec3& attenuation, ray& scattered
    ) const {
        vec3 scatter_direction = rec.normal + random_unit_vector();//到立方体某个随机点的向量
        scattered = ray(rec.p, scatter_direction);//散射光线
        attenuation = albedo;//衰减率
        //让光线根据一定的概率p发生散射
        //albedo/p
        return true;
    }

public:
    vec3 albedo;
};

class metal : public material {
public:
    metal(const vec3& a, double f) : albedo(a), fuzz(f<1?f:1) {}

    virtual bool scatter(
            const ray& r_in, const hit_record& rec, vec3& attenuation, ray& scattered
    ) const {
        vec3 reflected = reflect(unit_vector(r_in.direction()), rec.normal);
        scattered = ray(rec.p, reflected+fuzz*random_in_unit_sphere());//散射光线是反射光线加上随机的模糊向量
        attenuation = albedo;
        return (dot(scattered.direction(), rec.normal) > 0);
    }

public:
    vec3 albedo;
    double fuzz;
};

class dielectric : public material {
public:
    //反射率
    dielectric(double ri) : ref_idx(ri) {}

    virtual bool scatter(
            const ray& r_in, const hit_record& rec, vec3& attenuation, ray& scattered
    ) const {
        attenuation = vec3(1.0, 1.0, 1.0);
        double etai_over_etat;
        //如果是表面法向量和入射方向相同，外表面入射
        if (rec.front_face) {
            etai_over_etat = 1.0 / ref_idx;
        } else {
            etai_over_etat = ref_idx;
        }

        vec3 unit_direction = unit_vector(r_in.direction());

        double cos_theta = ffmin(dot(-unit_direction, rec.normal), 1.);//得到入射角和法线的余弦值
        double sin_theta = sqrt(1 - cos_theta*cos_theta);
        if(etai_over_etat * sin_theta > 1.)
        {
            vec3 reflected = reflect(unit_direction, rec.normal);
            scattered = ray(rec.p, reflected);
            return true;
        }


        vec3 refracted = refract(unit_direction, rec.normal, etai_over_etat);
        scattered = ray(rec.p, refracted);
        return true;
    }

    double ref_idx;
};
#endif //MATERIAL_H
