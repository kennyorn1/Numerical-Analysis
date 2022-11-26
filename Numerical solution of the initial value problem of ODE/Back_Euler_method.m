clc;
clear;
xi=0;
yi=1;
h=0.001;
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