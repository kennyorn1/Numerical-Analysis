clc;
clear;
%绘制原始数据点
x=0:0.01:3;
y=sin(10*x.^2+3);
plot(x,y,'o');
hold on;
xi=0:0.01:3;
%分段三次插值
y_cubic=interp1(x,y,xi,'cubic');
plot(xi,y_cubic,'b');
hold on;
%三次样条插值
y_spline=interp1(x,y,xi,"spline");
plot(xi,y_spline,'r');
hold on;
legend('原始数据','分段三次插值','三次样条插值');