//
// Created by flux_user on 2024/1/21.
//

#ifndef CPP1_PERLIN_H
#define CPP1_PERLIN_H
#include "rtweekend.h"
inline double trilinear_interp(double c[2][2][2], double u, double v, double w) {
    auto uu = u*u*(3-2*u);
    auto vv = v*v*(3-2*v);
    auto ww = w*w*(3-2*w);
    auto accum = 0.0;

    for (int i=0; i < 2; i++)
        for (int j=0; j < 2; j++)
            for (int k=0; k < 2; k++) {
                vec3 weight_v(u-i, v-j, w-k);
                accum += (i*uu + (1-i)*(1-uu))
                         * (j*vv + (1-j)*(1-vv))
                         * (k*ww + (1-k)*(1-ww))
                         * dot(c[i][j][k], weight_v);
            }
    return accum;
}
class perlin {
public:
    perlin() {
        ranfloat = new double[point_count];
        for (int i = 0; i < point_count; ++i) {
            ranfloat[i] = random_double();
        }

        perm_x = perlin_generate_perm();
        perm_y = perlin_generate_perm();
        perm_z = perlin_generate_perm();
    }

    ~perlin() {
        delete[] ranfloat;
        delete[] perm_x;
        delete[] perm_y;
        delete[] perm_z;
    }
    double turb(const vec3& p, int depth=7) const {
        auto accum = 0.0;
        vec3 temp_p = p;
        auto weight = 1.0;

        for (int i = 0; i < depth; i++) {
            accum += weight*noise(temp_p);
            weight *= 0.5;
            temp_p *= 2;
        }

        return fabs(accum);
    }
    //生成了基于给定三维向量位置的Perlin噪声值。
    double noise(const vec3& p) const {
        //计算出每个维度的“分数部分”
        //floor是一个数学函数，它将给定的浮点数舍入为小于或等于该数的最大整数。例如，floor(3.8)的结果是3，floor(-3.8)的结果是-4。
        auto u = p.x() - floor(p.x());
        auto v = p.y() - floor(p.y());
        auto w = p.z() - floor(p.z());
        int i = floor(p.x());
        int j = floor(p.y());
        int k = floor(p.z());

        //这个位置乘以4（可以调整 Perlin噪声的频率）并对结果取整数部分，再对结果取模256
//        auto i = static_cast<int>(4*p.x()) & 255;
//        auto j = static_cast<int>(4*p.y()) & 255;
//        auto k = static_cast<int>(4*p.z()) & 255;
        double c[2][2][2];
        for (int di=0; di < 2; di++)
            for (int dj=0; dj < 2; dj++)
                for (int dk=0; dk < 2; dk++)
                    c[di][dj][dk] = ranfloat[
                            perm_x[(i+di) & 255] ^
                            perm_y[(j+dj) & 255] ^
                            perm_z[(k+dk) & 255]
                    ];
        //异或操作
        //return ranfloat[perm_x[i] ^ perm_y[j] ^ perm_z[k]];
        return trilinear_interp(c, u, v, w);
    }

private:
    static const int point_count = 256;
    //得到一个256的随机数组
    double* ranfloat;
    vec3* ranvec;
    //perm_x，perm_y和perm_z是用作置换表的动态整数数组
    int* perm_x;
    int* perm_y;
    int* perm_z;

    //对数组打乱其顺序
    static int* perlin_generate_perm() {
        auto p = new int[point_count];

        for (int i = 0; i < perlin::point_count; i++)
            p[i] = i;

        permute(p, point_count);

        return p;
    }
    //洗牌算法
    static void permute(int* p, int n) {
        for (int i = n-1; i > 0; i--) {
            int target = random_int(0, i);
            int tmp = p[i];
            p[i] = p[target];
            p[target] = tmp;
        }
    }
};
#endif //CPP1_PERLIN_H
