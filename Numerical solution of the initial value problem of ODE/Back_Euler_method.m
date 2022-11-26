clc;
clear;
xi=0;
yi=1;
h=0.1;
y=[yi];
x=[xi];
while xi<1
    xi=xi+h;
    a=[h-1 yi -2*h*xi];
    tempy=roots(a);
    for i=1:1:length(tempy)
        if tempy(i)>yi
            yi=tempy(i);
        end
    end
    x=[x,xi];
    y=[y,yi];
end
plot(x,y);
hold on;
xx=0:0.01:1;
yy=(1+2*xx).^(1/2);
plot(xx,yy);
hold on;
legend('后退欧拉法','原函数');
