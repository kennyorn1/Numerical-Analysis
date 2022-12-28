function [m]=column_principle_Gaussian_elimination(m)
mshape=size(m);
for j=1:1:(mshape(2)-1)
    for i=j:1:mshape(1)
        if abs(m(j,j))<abs(m(i,j))
            tempm=m(j,:);
            m(j,:)=m(i,:);
            m(i,:)=tempm;
        end
    end
    for i=j:1:(mshape(1)-1)
        rate=m(i+1,j)/m(j,j);
        m(i+1,:)=m(i+1,:)-m(j,:)*rate;
    end
end
