clc;
clear;
%绘制原函数
x=0:0.01:3;
y=sin(10*x.^2+3);
plot(x,y,'g');
hold on;
%设置插值节点
xi=0:0.08:3;
yi=sin(10*xi.^2+3);
plot(xi,yi,'o');
hold on;
%分段三次插值
y_cubic=interp1(xi,yi,x,'cubic');
plot(x,y_cubic,'r');
hold on;
%三次样条插值
y_spline=interp1(xi,yi,x,"spline");
plot(x,y_spline,'b');
hold on;
legend('原函数','节点','分段三次插值','三次样条插值');