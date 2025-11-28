% f(x) = p1*x^2 + p2*x + p3
A = [90000 300 1;
     160000 400 1;   
     250000 500 1;];
b = [0.616; 0.525; 0.457];
% A * p = b
p = inv(A) * b;

x = [300 400 500];
y = [0.616 0.525 0.457];
x0 = 350;
[p1, y1] = myPoly(x, y, x0);

p
p1
y1


function [p, y0] = myPoly(x, y, x0)

    if nargin<1
        error('not enough arguments')
    end
    
    s = size(x);
    p = polyfit(x, y, s(2)-1);
    
    if nargin > 1
        y0 = polyval(p, x0);
    end

end

