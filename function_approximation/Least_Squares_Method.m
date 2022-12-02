clc;
clear;
x=0:0.1:1;
xi=0:0.001:1;
y=(x.^2-3*x+5).*exp(-5*x).*sin(x);
plot(x,y,'o');
hold on;
yi=(xi.^2-3*xi+5).*exp(-5*xi).*sin(xi);
plot(xi,yi);
hold on;
n=length(x);
for i=1:1:n-1
    p=[];
    p=polyfit(x,y,i);
    yi=polyval(p,xi);
    plot(xi,yi);
    hold on;   
end 
num=["拟合点",'原函数'];
for i=1:1:n-1
    num=[num,[num2str(i)+"次多项式"]];
end
legend(num);
text(0.2,0,'1到10次多项式');
