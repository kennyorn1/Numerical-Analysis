clc;
clear;
xi=0;
yi=1;
h=0.01;
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
