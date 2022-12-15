clc;
clear;
%步长为h1=0.1
n1=10;
h1=1/n1;
x1=0:h1/2:1;
x1(1)=[];
y1=sin(x1)./x1;
s1=0;
for i=1:2:(length(y1)-2)
    s1=s1+(y1(i)+4*y1(i+1)+y1(i+2))*h1/6;
end
%步长为h2=0.001
n2=1000;
h2=1/n2;
x2=0:h2/2:1;
x2(1)=[];
y2=sin(x2)./x2;
s2=0;
for i=1:2:(length(y2)-2)
    s2=s2+(y2(i)+4*y2(i+1)+y2(i+2))*h2/6;
end
s1,s2
