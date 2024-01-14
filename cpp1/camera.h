//camera.h
#ifndef CAMERA_H
#define CAMERA_H

#include "rtweekend.h"

class camera {
public:
    camera(vec3 lookfrom, vec3 lookat, vec3 vup,double vfov, double aspect, double aperture, double focus_dist) {

        auto theta = degrees_to_radians(vfov);//转弧度制
        auto half_height = tan(theta/2);
        auto half_width = aspect * half_height;

        //lower_left_corner = vec3(-half_width, -half_height, -1.0);//左下角方向
        //horizontal = vec3(half_width*2, 0.0, 0.0);//x方向
        //vertical = vec3(0.0, half_height*2, 0.0);//y方向
        origin = lookfrom;//相机原点
        lens_radius = aperture/2;//透镜的半径


        w = unit_vector(lookfrom - lookat);
        u = unit_vector(cross(vup, w));//得到垂直于平面的x向量
        v = cross(w, u);//得到垂直于摄像机的y轴

        lower_left_corner = origin - half_width* focus_dist*u - half_height* focus_dist*v - w* focus_dist;

        horizontal = 2*half_width* focus_dist*u;
        vertical = 2*half_height* focus_dist*v;
    }

    ray get_ray(double s, double t) {
        vec3 rd = lens_radius * random_in_unit_disk() ;
        vec3 offset = u * rd.x() + v * rd.y();
        return ray(origin + offset, lower_left_corner + s*horizontal + t*vertical - origin - offset);//uv像素到相机原点的向量
    }

public:
    vec3 origin;
    vec3 lower_left_corner;
    vec3 horizontal;
    vec3 vertical;
    vec3 u,v,w;
    double lens_radius;
};
#endif