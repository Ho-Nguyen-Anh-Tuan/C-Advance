#include <stdio.h>
#include <math.h>
#include "calculation.h"

static double calculateDelta(int a, int b, int c)
{
    return b*b - 4*a*c;
}

Nghiem giaiPTB2(int a, int b, int c)
{
    Nghiem nghiem;
    double delta = calculateDelta(a, b, c);

    if (delta > 0){
        nghiem.x1 = (-b + sqrt(delta)) / (2 * a);
        nghiem.x2 = (-b - sqrt(delta)) / (2 * a);
    }
    else if (delta == 0){
        nghiem.x1 = nghiem.x2 = (double)(-b) / (2 * a);
    } 
    else{
        nghiem.x1 = nghiem.x2 = NAN;
    }

    return nghiem;
}