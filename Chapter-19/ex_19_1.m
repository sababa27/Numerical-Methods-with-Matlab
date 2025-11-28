f = @(x) 0.2 + 25*x - 200*x^2 + 675*x^3 - 900*x^4 + 400*x^5;
a = 0;
b = 0.8;
fa = f(a);
fb = f(b);

I = (b-a)*(fa+fb)/2;

syms x;
f = 0.2 + 25*x - 200*x^2 + 675*x^3 - 900*x^4 + 400*x^5;
f_2 = diff(diff(f, x),x);
fe = int(f_2, x, a, b)/(b-a);
Ea = -(1/12)*((b-a)^3)*fe;
