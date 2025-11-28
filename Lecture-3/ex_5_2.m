clear
f = @(x) sin(10*x)+cos(3*x);
xb = MyIncsearch(f, 3, 6, 100);
disp(size(xb))
disp(xb)