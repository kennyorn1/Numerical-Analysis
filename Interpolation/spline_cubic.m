clc;
clear;
%插值点
x=[0:0.1:3];
y=sin(10*x.^2+3);
plot(x,y,'o');
hold on;
%绘图节点
xi=[0:0.01:3];
%三次样条插值
y_spline=interp1(x,y,xi,"spline");
plot(xi,y_spline,'r');
hold on;
%分段三次插值
y_cubic=interp1(x,y,xi,'cubic');
plot(xi,y_cubic,'b');
hold on;
%图例
legend('插值点','三次样条插值','分段三次插值');
