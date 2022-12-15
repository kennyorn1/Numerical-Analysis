function y=Lagrange(xi,yi,x)
%(xi,yi)为原始数据点
%(x,y)为拉格朗日插值函数上的预测点
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
legend('原始数据点','拉格朗日插值函数');
