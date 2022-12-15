clc;
clear;
xi=1.9;
epochs=0;
x=0:0.01:2;
y=x.^2-3*x+exp(x)-2;
plot(x,y);
hold on;
while (xi^2-3*xi+exp(xi)-2)>10^(-6)
    epochs=epochs+1;
    xj=[];
    yj=[];
    xi=xi-((xi^2-3*xi+exp(xi)-2)/(2*xi-3+exp(xi)));
    xj=[xj,xi];
    yj=[yj,(xi^2-3*xi+exp(xi)-2)];
    plot(xj,yj,'o');
    hold on;
    str{1}=['函数图像'];
    str{epochs+1}=['第',num2str(epochs),'次迭代结果'];
    legend(str);
end
text(0.5,2.5,['Epochs=',num2str(epochs)]);
title('Newton iteration method');
text(0.5,2,['函数的零点为',num2str(xi)]);

