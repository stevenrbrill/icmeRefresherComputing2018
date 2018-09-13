close all
clc
clear

% Variable
my_var = 5;

% Using a function
fun_val = demo_fun(my_var)

% Vectors
vec1 = [1,2,3];
vec2 = [4,5,6];
mat = [1,2,3;4,5,6;7,8,9];

mult = vec1.*vec2
mat_mul = mat*vec1'
mat_solv = mat\vec2'

% Plotting

x = linspace(0,10,25);
y = x.^2 + sin(2*pi*x);
figure
plot(x,y,'b*')
hold on
z = x.^3;
plot(x,z,'r--')
legend('y','z')
xlabel('x')
ylabel('Functions')
title('Example Figure')