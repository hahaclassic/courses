#include <iostream>
#include <cmath>

#define PI_ACC_1 3.14
#define PI_ACC_2 3.141596


#define PRECISION "%.20f"

double fpu_sin(double num)
{
    double res;

    __asm__(
        "fld %1\n\t"                     
        "fsin\n\t"                      
        "fstp %0\n\t"                   
        : "=m" (res)                    
        : "m" (num) 
    );

    return res;
}

double fpu_sin_pi()                             
{
    double res;

    __asm__(
        "fldpi\n\t"                     
        "fsin\n\t"                      
        "fstp %0\n\t"                   
        : "=m" (res)                    
    );

    return res;
}

double fpu_sin_half_pi()                        
{
    double res;
    const int divider = 2;
    
    __asm__(
        "fldpi\n\t"                     
        "fild %1\n\t"                   
        "fdivp\n\t"                    
        "fsin\n\t"                      
        "fstp %0\n\t"                   
        : "=m" (res)                    
        : "m" (divider)                 
    );

    return res;
}

int main()
{
    printf("\nTest PI: \n");
    printf("LIB sin(3.14) =      " PRECISION "\n", sin(PI_ACC_1));
    printf("LIB sin(%lf) = " PRECISION "\n", PI_ACC_2, sin(PI_ACC_2));
    printf("LIB sin(M_PI) =      " PRECISION "\n", sin(M_PI));
    printf("FPU sin(3.14) =      " PRECISION "\n", fpu_sin(PI_ACC_1));
    printf("FPU sin(%lf) = " PRECISION "\n", PI_ACC_2, fpu_sin(PI_ACC_2));
    printf("FPU sin(FPU PI) =   " PRECISION "\n", fpu_sin_pi());
    

    printf("\nTest PI / 2: \n");
    printf("LIB sin(3.14 / 2) =     " PRECISION "\n", sin(PI_ACC_1 / 2));
    printf("LIB sin(%lf / 2) = " PRECISION "\n", PI_ACC_2, sin(PI_ACC_2 / 2));
    printf("LIB sin(M_PI / 2) =     " PRECISION "\n", sin(M_PI / 2));
    printf("FPU sin(3.14 / 2) =     " PRECISION "\n", fpu_sin(PI_ACC_1 / 2));
    printf("FPU sin(%lf / 2) = " PRECISION "\n", PI_ACC_2, fpu_sin(PI_ACC_2 / 2));
    printf("FPU sin(FPU PI / 2) =   " PRECISION "\n", fpu_sin_half_pi());

    return EXIT_SUCCESS;
}