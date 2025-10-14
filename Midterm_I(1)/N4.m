syms x
y = sin(4*x)+sin((2/3)*x);
y_1 = diff(y, x);
y_2 = diff(y_1, x);

f = matlabFunction(y);
f_1 = matlabFunction(y_1);
f_2 = matlabFunction(y_2);

x = 0:0.01:30;
y = f(x);
y_1 = f_1(x);
y_2 = f_2(x);

plot(x, y, 'r');
hold on;
plot(x, y_1, 'g');
hold on;
plot(x, y_2, 'b');

s = size(x);
for i=1:1:s(2)
    disp(y(i))
end