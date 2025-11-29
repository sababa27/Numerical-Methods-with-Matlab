x = [0 8 16 24 32];
y = [14.621 11.843 9.870 7.305 6.413];
x0 = 27;

pa = polyfit(x(4:5), y(4:5), 1);
A = polyval(pa, x0);

pb = polyfit(x, y, 5);
B = polyval(pb, x0);

G = spline(x, y, x0);

