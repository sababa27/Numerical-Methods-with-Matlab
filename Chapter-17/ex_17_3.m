syms x1 x2 x3 y1 y2 y3

A = [x1^2 x1 1; x2^2 x2 1; x3^2 x3 1];
B = [y1; y2; y3];
abc = inv(A) * B;
a = abc(1);
b = abc(2);
c = abc(3);

syms x
f = a*x^2 + b*x + c;

%pretty(simplify(f))

simplify(subs(f, x, x3))

%%
syms x1 x2 x3 y1 y2 y3
b1 = y1;
b2 = (y2-y1)/(x2-x1);
b3 = ((y3-y2)/(x3-x2) - (y2-y1)/(x2-x1))/(x3-x1);
syms x
f = b3*(x-x1)*(x-x2)+b2*(x-x1)+b1;

simplify(subs(f, x, x1))

%%
x1 = 1; x2 = 4; x3 = 6;
y1 = 0; y2 = 1.386294; y3 = 1.791759;

b1 = y1;
b2 = (y2-y1)/(x2-x1);
b3 = ((y3-y2)/(x3-x2) - (y2-y1)/(x2-x1))/(x3-x1);
syms x
f = b3*(x-x1)*(x-x2)+b2*(x-x1)+b1;
pretty(vpa(simplify(f),7))

A = [x1^2 x1 1; x2^2 x2 1; x3^2 x3 1];
B = [y1; y2; y3];
abc = inv(A) * B;
a = abc(1);
b = abc(2);
c = abc(3);
f = a*x^2 + b*x + c;
pretty(vpa(simplify(f),7))