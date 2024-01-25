#include "box.h"

box::box(const vec3& p0, const vec3& p1, shared_ptr<material> ptr)
{
    box_min = p0;
    box_max = p1;

    sides.add(make_shared<xy_rect>(p0.x(), p1.x(), p0.y(), p1.y(), p1.z(), ptr));
    sides.add(make_shared<flip_face>(make_shared<xy_rect>(p0.x(), p1.x(), p0.y(), p1.y(), p0.z(), ptr)));

    sides.add(make_shared<xz_rect>(p0.x(), p1.x(), p0.z(), p1.z(), p1.y(), ptr));
    sides.add(make_shared<flip_face>(make_shared<xz_rect>(p0.x(), p1.x(), p0.z(), p1.z(), p0.y(), ptr)));

    sides.add(make_shared<yz_rect>(p0.y(), p1.y(), p0.z(), p1.z(), p1.x(), ptr));
    sides.add(make_shared<flip_face>(make_shared<yz_rect>(p0.y(), p1.y(), p0.z(), p1.z(), p0.x(), ptr)));


}

bool box::hit(const ray& r, double t0, double t1, hit_record& rec)const
{
    return sides.hit(r, t0, t1, rec);
}

bool box::bounding_box(double t0, double t1, aabb& output_box)const
{
    output_box = aabb(box_min, box_max);
    return true;
}