clc
clear
close all



y = @(x) x^2 * sin(x) - exp((1-x)^2);

accuracy = 0.0002;
x1 = 1;
x2= 2;
M = 1; % multiplicity factor

x_Bisec = Bisection(y,x1,x2,accuracy);
x_newton = NewtonMethod(y,x1,M,accuracy);
x_Secant =  Secant(y,x1,x2,accuracy);