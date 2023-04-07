close all; 
clear all;
clc;

l1 = 1;
l2 = 1;
l3 = 1;

theta1_min = pi/2;
theta1_max = 3*pi/4;
theta2_min = -pi/4;
theta2_max = 0;
theta3_min = -pi/4;
theta3_max = pi/4;

k = 7000;

ydt = [];
xt = [];

for i = 1:k
    theta1 = (theta1_max-theta1_min).*rand(1,1) + theta1_min;
    theta2 = (theta2_max-theta2_min).*rand(1,1) + theta2_min;
    theta3 = (theta3_max-theta3_min).*rand(1,1) + theta3_min;
    
    x = l1*cos(theta1)+l2*cos(theta1+theta2)+l3*cos(theta1+theta2+theta3);
    y = l1*sin(theta1)+l2*sin(theta1+theta2)+l3*sin(theta1+theta2+theta3);
    ydt = [ydt;theta1 theta2 theta3];
    xt = [xt;x y];
end

p = 3000;
ydv = [];
xv = [];

for i = 1:p
    theta1 = (theta1_max-theta1_min).*rand(1,1) + theta1_min;
    theta2 = (theta2_max-theta2_min).*rand(1,1) + theta2_min;
    theta3 = (theta3_max-theta3_min).*rand(1,1) + theta3_min;
    
    x = l1*cos(theta1)+l2*cos(theta1+theta2)+l3*cos(theta1+theta2+theta3);
    y = l1*sin(theta1)+l2*sin(theta1+theta2)+l3*sin(theta1+theta2+theta3);
    ydv = [ydv;theta1 theta2 theta3];
    xv = [xv;x y];
end

save('ik_data.mat','k','xt','xv','ydt','ydv');