x = [4.5 7];
y = [1 2.5];
x0 = 5;
y0 = linSpine(x, y, x0);
y0

function y0 = linSpine(x, y, x0)
    y0 = y(1) + (y(2) - y(1))*(x0 - x(1))/(x(2)-x(1));
end