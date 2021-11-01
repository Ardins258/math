clear
clc
close all %%closes all figures


%% y = f(x)
%% f(x) = x^2
%% plot y from -5 to 5 

%% independent variable

x = -5:5;
y = x.^2;
z = x;

fig = figure(); %%opens a blank figure
set(fig,'color','white')
set(axes,'FontSize',18)
plot(x,y,'b-','LineWidth',3)
plot(x,z,'r-','LineWidth',3)
grid on
title('Whatever Graph')
xlabel('x','FontSize',18)
ylabel('y','FontSize',18)

legend('Y=X^2' , 'Z=X')
