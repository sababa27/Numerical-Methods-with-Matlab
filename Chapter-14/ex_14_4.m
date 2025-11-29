x = 10:10:80;
y = [25 70 380 550 610 1220 830 1450]
[a0, a1] = LinReg(x, y);


function [a0, a1] = LinReg(x, y)
    n = length(x);
    sumx = 0;
    sumy = 0
    sumx2 = 0;
    sumxy = 0;

    for i = 1:1:n
        sumx = sumx + x(i);
        sumy = sumy + y(i);
        sumxy = sumxy + x(i)*y(i);
        sumx2 = sumx2 + x(i)*x(i);
    end

    a1 = (n*sumxy - sumx*sumy)/(n*sumx2 - sumx^2);
    a0 = sumy/n - a1*sumx/n;
end