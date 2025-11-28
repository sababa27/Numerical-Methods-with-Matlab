function y0 = MyLagrange(x, y, x0)
    n = length(x);
    if length(y) ~= n
        error('x and y must be same length');
    end
    
    y0 = 0;
    for i = 1:n
        product = 1;
        for j = 1:n
            if i ~= j
                product = product*(x0-x(j))/(x(i)-x(j));
            end
        end
        y0 = y0 + product*y(i);
    end
end