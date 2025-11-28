function [B, y0] = MyNewtint(x,y,x0)
    n = length(x);
    if length(y)~=n
        error('x and y must be same length')
    end
    b = zeros(n,n);

    b(:,1) = y(:);

    for j = 2:1:n
        for i = 1:n-j+1
            b(i,j) = (b(i+1,j-1)-b(i,j-1))/(x(i+j-1)-x(i));
        end
    end
 
    B = b(1, :);
    
    xt = 1;
    y0 = b(1,1);
    for j = 1:1:n-1
        xt = xt*(x0-x(j));
        y0 = y0+b(1,j+1)*xt;
    end
end


%{

b2 -> f[x2], f[x1]
b3 -> f[x3, x2], f[x2, x1]
b4 -> f[x4, x3, x2], f[x3, x2, x1]
b5 -> f[x5, x4, x3, x2], f[x4, x3, x2, x1]

y1  b1   b2   b3   b4
y2  o   o   o   o
y3  o   o   o   o
y4  o   o   o   o
y5  o   o   o   o

%}