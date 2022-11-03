function y=Lagrangian_interpolation(xi,yi,x)
%拉格朗日插值函数
%（xi,yi）为要拟合的数据节点，（x,y）为拉格朗日插值函数上的数据点
%xi,yi,x,y均为向量
plot(xi,yi,'o');
hold on;
interp_num=length(xi);
nihep_num=length(x);
y=[];
for  nihei=1:nihep_num
    lbfs=[];
    for interpi=1:interp_num
        lbf=1;
        for interpib=1:interp_num
            if interpib~=interpi
                lbf=lbf*((x(nihei)-xi(interpib))/(xi(interpi)-xi(interpib)));
            end
        end
        lbfs=[lbfs,lbf];
    end
    y=[y,dot(lbfs,yi)];
end
plot(x,y,'b');
hold on;







       

