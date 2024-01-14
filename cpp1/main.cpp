
#include "ray.h"
#include <iostream>
#include "sphere.h"
#include "hittable_list.h"
#include "rtweekend.h"
#include "camera.h"
#include <memory>//std::shared_ptr
#include "material.h"
vec3 ray_color(const ray& r, const hittable_list& world, int depth) {
    hit_record rec;

    if (depth<=0)
        return vec3(1,0,0);
    if(world.hit(r,0.001,infinity,rec)){
        ray scattered;//折射光
        vec3 attenuation;//衰减程度
        if(rec.mat_ptr->scatter(r, rec, attenuation, scattered))
            return attenuation * ray_color(scattered, world, depth-1);
        return vec3(0,0,0);
        //vec3 target = rec.p  + random_in_hemisphere(rec.normal);//随机点
        //return 0.5* ray_color(ray(rec.p, target - rec.p), world, depth-1);
    }//击中了

    //没击中
    vec3 unit_direction = unit_vector(r.direction());//归一化
    auto t = 0.5*(unit_direction.y() + 1.0);
    //y的范围从-1.0 ≤ y ≤ 1.0映射到了0 ≤ y ≤ 1.0。这样t=1.0时就是蓝色, 而t=0.0时就是白色。
    return (1.0-t)*vec3(1.0, 1.0, 1.0) + t*vec3(0.5, 0.7, 1.0);

}

hittable_list random_scene() {
    hittable_list world;

    world.add(make_shared<sphere>(
            vec3(0,-1000,0), 1000, make_shared<lambertian>(vec3(0.5, 0.5, 0.5))));

    int i = 1;
    for (int a = -11; a < 11; a++) {
        for (int b = -11; b < 11; b++) {
            auto choose_mat = random_double();
            vec3 center(a + 0.9*random_double(), 0.2, b + 0.9*random_double());
            if ((center - vec3(4, 0.2, 0)).length() > 0.9) {
                if (choose_mat < 0.8) {
                    // diffuse
                    auto albedo = vec3::random() * vec3::random();
                    world.add(
                            make_shared<sphere>(center, 0.2, make_shared<lambertian>(albedo)));
                } else if (choose_mat < 0.95) {
                    // metal
                    auto albedo = vec3::random(.5, 1);
                    auto fuzz = random_double(0, .5);
                    world.add(
                            make_shared<sphere>(center, 0.2, make_shared<metal>(albedo, fuzz)));
                } else {
                    // glass
                    world.add(make_shared<sphere>(center, 0.2, make_shared<dielectric>(1.5)));
                }
            }
        }
    }

    world.add(make_shared<sphere>(vec3(0, 1, 0), 1.0, make_shared<dielectric>(1.5)));

    world.add(
            make_shared<sphere>(vec3(-4, 1, 0), 1.0, make_shared<lambertian>(vec3(0.4, 0.2, 0.1))));

    world.add(
            make_shared<sphere>(vec3(4, 1, 0), 1.0, make_shared<metal>(vec3(0.7, 0.6, 0.5), 0.0)));

    return world;
}
int main() {
    const int image_width = 200;
    const int image_height = 100;
    const int samples_per_pixel = 1000;
    const int max_depth = 50;

    auto world = random_scene();

    vec3 lookfrom(13,2,3);
    vec3 lookat(0,0,0);
    vec3 vup(0,1,0);
    auto dist_to_focus = 10.0;
    auto aperture = 0.1;
    const auto aspect_ratio = double(image_width) / image_height;

    camera cam(lookfrom, lookat, vup, 20, aspect_ratio, aperture, dist_to_focus);

    std::cout << "P3\n" << image_width << ' ' << image_height << "\n255\n";

    for (int j = image_height-1; j >= 0; --j) {
        std::cerr << "\rScanlines remaining: " << j << ' ' << std::flush;
        for (int i = 0; i < image_width; ++i) {
            vec3 color(0,0,0);
            for (int s = 0; s < samples_per_pixel; ++s) {
                auto u = (i + random_double()) / image_width;//对周围像素进行采样
                auto v = (j + random_double()) / image_height;
                ray r = cam.get_ray(u, v);
                color += ray_color(r, world,max_depth);
            }
            color.write_color(std::cout, samples_per_pixel);
        }
    }

    std::cerr << "\nDone.\n";
}