clear 
clc
close all
%%%Plot a circle

%%%Cartesian Coordinates
%%% x^2+y^2 = r^2

%% solve for y

%% y = +-sqrt(r^2-x^2)

r = 3;

x = -3:0.1:3;

ypos = sqrt(r^2-x.^2)
yneg = -sqrt(r^2-x.^2)

plot(x,ypos,'b-')
hold on
plot(x,yneg,'r-')