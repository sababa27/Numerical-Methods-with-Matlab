x = linspace(-1, 1, 9);
y = 1./(1+25*x.^2);

xx = linspace(-1, 1);
yy = spline(x, y, xx);

plot(x, y, 'or');
hold on;
plot(xx, yy, 'g');
hold on;

yc = [1 y -4];
yyc = spline(x, yc, xx);
plot(xx, yyc, 'b');