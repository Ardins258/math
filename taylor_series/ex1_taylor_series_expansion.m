clear 
clc
close all 

%%Create an x-vector

x = -2:0.1:2;
y = exp(x);

fig = figure();
set(fig,'color','white')
plot(x,y,'LineWidth',2)
grid on
xlabel('x')
ylabel('y')

%%Use x vecotr and create y estimate using Taylor series.

N = 1; %%Order of approximation, go higher if you want better estimation
yest = 0*y
for n = 0:N
	yest = yest + (x.^n)./factorial(n);
end

hold on
plot(x,yest,'r-','LineWidth',2)
legend('Actual Function','Taylor Series Expansion')
