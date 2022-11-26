xi=0;
yi=1;
h=0.001;
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
