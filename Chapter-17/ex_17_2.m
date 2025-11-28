%{

f(x) = k*x + b
f(x1) = k*x1 + b
f(x2) = k*x2 + b

k = (f(x2) - f(x1))/(x2 - x1)
b = f(x1) - k * x1

f(x0) = k*x0 + b = k*x0 + f(x1) - k*x1 = f(x1) + k*(x0 - x1)
f(x0) = f(x1) + (f(x2) - f(x1))/(x2 - x1)*(x0 - x1)

%}

m = 9;
v = zeros(1, m);
i = 1;

while(1)
    if i >= m
        break
    end
    
    x0 = (m + i)/2;
    tr = log(x0);
    est = lin(x0, i, m, log(i), log(m));
    pr = 100 * abs(true - est)/true;
    fprintf('%.2f  |  %.2f  | %d%% \n', tr, est, ceil(pr));

    i = i + 1;
    m = m - 1;

end

function [y0] = lin(x0, x1, x2, y1, y2)
y0 = y1 + (x0 - x1)*(y2 - y1)/(x2-x1);
end