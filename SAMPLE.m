clc
clear
close all

y = @(x) x^2 * sin(x) - exp((1-x)^2);

x1 = 1;
x2= 2;

accuracy = 0.0002;
M = 1; % multiplicity factor
MaxIter = 100;

x_Bisec = Bisection(y,x1,x2,accuracy,MaxIter);
x_newton = NewtonMethod(y,x1,M,accuracy,MaxIter);
x_Secant =  Secant(y,x1,x2,accuracy,MaxIter);