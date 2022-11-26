clc;
clear;
x=[5 10 15 20 25 30 35 40 50 60];
y=[5.2 7.2 9 10.5 12 13.2 14.1 15.1 15.3 15.7];
xi=5:0.001:60;
plot(x,y,'o');
hold on;
n=length(x);
for i=1:1:n-1
    p=[];
    p=polyfit(x,y,i);
    yi=polyval(p,xi);
    plot(xi,yi);
    hold on;   
end 
num=["拟合点"];
for i=1:1:n-1
    num=[num,[num2str(i)+"次多项式"]];
end
legend(num);
text(10,23,'四次多项式最小二乘拟合效果最好')
p=polyfit(x,y,4);
y=polyval(p,70);
text(10,20,['冲击能量70J时的峰值力预测值：',num2str(y),'kN'])