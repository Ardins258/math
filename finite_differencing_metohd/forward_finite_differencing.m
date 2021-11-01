clear 
clc
close all

x = -pi:0.1:pi;

y = sin(x);

fig = figure();
set(fig,'color','white')
plot(x,y,'LineWidth',2)
xlabel('x')
ylabel('y')
grid on

yderiv = cos(x);

fig = figure();
set(fig,'color','white')
plot(x,yderiv,'LineWidth',2)
xlabel('x')
ylabel('y')
grid on

yderivest = (y(2:end)) - y(1:end-1)./delx;

hold on
plot(x(2:end-delx/2),yderivest,'r-','LineWidth',2)

legend('Analytical Derivative','Numerical Derivative')
