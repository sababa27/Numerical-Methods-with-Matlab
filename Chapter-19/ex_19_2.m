f = @(x) 0.2 + 25*x - 200*x.^2 + 675*x.^3 - 900*x.^4 + 400*x.^5;
n = 2;
m = n + 1;
a = 0;
b = 0.8;
x = linspace(a, b, m);
y = f(x);
s = sum(y);
s = s - f(a) - f(b);
I = (b - a)*(f(a)+2*s+f(b))/(2*n);

syms x
f = 0.2 + 25*x - 200*x.^2 + 675*x.^3 - 900*x.^4 + 400*x.^5;
f_2 = diff(diff(f,x),x);
fe = int(f_2, x, a, b)/(b - a);
Ea = -(b - a)^3 * fe / (12*n^2);
