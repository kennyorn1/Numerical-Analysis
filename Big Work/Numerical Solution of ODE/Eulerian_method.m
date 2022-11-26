xi=0;
yi=1;
h=0.1;
y=[yi];
x=[xi];
while xi<1
    yd=yi-2*xi/yi;
    x=[x,xi+h];
    y=[y,yi+h*yd];
    xi=xi+h;
    yi=yi+h*yd;
end
plot(x,y);
hold on;
xx=0:0.01:1;
yy=(1+2*xx).^(1/2);
plot(xx,yy);
hold on;
legend('欧拉法','原函数');