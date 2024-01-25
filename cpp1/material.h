//
// Created by flux_user on 2024/1/13.
//

#ifndef MATERIAL_H
#define MATERIAL_H
#include "rtweekend.h"
#include "texture.h"

struct hit_record;
class material {
public:
    virtual vec3 emitted(double u, double v, const vec3& p) const {
                  return vec3(0,0,0);
              }
public:
    virtual bool scatter(
            const ray& r_in, const hit_record& rec, vec3& attenuation, ray& scattered
    ) const = 0;
};

class lambertian : public material {
public:
    lambertian(shared_ptr<texture> a) : albedo(a) {}

    virtual bool scatter(
            const ray& r_in, const hit_record& rec, vec3& attenuation, ray& scattered
    ) const {
        vec3 scatter_direction = rec.normal + random_unit_vector();
        scattered = ray(rec.p, scatter_direction,r_in.time());
        attenuation = albedo->value(rec.u, rec.v, rec.p);
        return true;
    }

public:
    shared_ptr<texture> albedo;
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
class checker_texture : public texture {
public:
    checker_texture() {}
    //奇数是一个纹理、偶数是一个纹理
    checker_texture(shared_ptr<texture> t0, shared_ptr<texture> t1): even(t0), odd(t1) {}
    //返回一个vec3类型的对象。这个函数在u，v处返回纹理的颜色。
    virtual vec3 value(double u, double v, const vec3& p) const {
        //算了三维空间中的一个基于位置的值，这会决定在指定位置返回哪种纹理的颜色。
        auto sines = sin(10*p.x())*sin(10*p.y())*sin(10*p.z());
        if (sines < 0)
            return odd->value(u, v, p);
        else
            return even->value(u, v, p);
    }

public:
    shared_ptr<texture> odd;
    shared_ptr<texture> even;
};
class diffuse_light : public material  {
public:
    diffuse_light(shared_ptr<texture> a) : emit(a) {}

    virtual bool scatter(
            const ray& r_in, const hit_record& rec, vec3& attenuation, ray& scattered
    ) const {
        return false;
    }

    virtual vec3 emitted(double u, double v, const vec3& p) const {
        return emit->value(u, v, p);
    }

public:
    shared_ptr<texture> emit;
};
class isotropic : public material {
public:
    //材质在各个方向的性质完全相同
    isotropic(shared_ptr<texture> a) : albedo(a) {}

    virtual bool scatter(
            const ray& r_in, const hit_record& rec, vec3& attenuation, ray& scattered
    ) const  {
        scattered = ray(rec.p, random_in_unit_sphere(), r_in.time());
        attenuation = albedo->value(rec.u, rec.v, rec.p);
        return true;
    }

public:
    shared_ptr<texture> albedo;
};
#endif //MATERIAL_H
