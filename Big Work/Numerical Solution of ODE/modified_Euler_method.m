clc;
clear;
xi=0;
yi=1;
h=0.1;
x=[xi];
y=[yi];
while xi<1
    yy=yi+h*(yi-2*xi/yi);
    yi=yi+h/2*((yi-2*xi/yi)+(yy-2*(xi+h)/yy));
    xi=xi+h;
    x=[x,xi];
    y=[y,yi];
end
plot(x,y);
hold on;
xx=0:0.01:1;
yy=(1+2*xx).^(1/2);
plot(xx,yy);
hold on;
legend('改进欧拉法','原函数');
