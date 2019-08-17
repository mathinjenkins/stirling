#include<iostream>
#include<exponent/exponent.h>
#include<sqrt/sqrt.h>
#include<euler/euler.h>
#include<pi/pi.h>

float Factorial(float n){
    float result = 0;
    int precision = 20;
    
    float e = GetE(precision);
    float pi = GetPi(precision);
    result = CalculateExponent(n / e, 2);
    result *= CalculateSqrt(2 * pi * n, precision);

    return result;
}
int main(){
    int n;
    std::cout << "Enter a number: ";
    std::cin >> n;
    std::cout << "n! ~ " << Factorial(n) << std::endl;

    return 0;
}