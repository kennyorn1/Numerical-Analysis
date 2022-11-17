clc;
clear;
x1=0:0.1:1;
x1(1)=[];
y1=sin(x1)./x1;
x2=0:0.001:1;
x2(1)=[];
y2=sin(x2)./x2;
plot(x1,y1);
hold on;
plot(x2,y2);
hold on;
v1=trapz(x1,y1)
v2=trapz(x2,y2)