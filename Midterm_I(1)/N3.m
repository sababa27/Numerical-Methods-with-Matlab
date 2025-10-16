clear
f = @(x) tanh(x-3);
fp = @(x)  1 - tanh(x - 3)^2;

x_v = 0:0.1:150;
f_v = tanh(x_v-3);
plot(x_v, f_v);

xr = 100;
maxit = 10000;
es = 0.1;

[root,ea,iter] = newtraph(f,fp,xr,es,maxit);


%a)
disp(root)
disp(ea)
disp(iter)

function [root,ea,iter] = newtraph(func,dfunc,xr,es,maxit,varargin)
if nargin < 3, error('at least 3 input arguments required'),end
if nargin < 4| isempty(es),es=0.0001;end
if nargin < 5| isempty(maxit),maxit
50;end
iter = 0;
while (1)
xrold = xr;
xr = xr - func(xr)/dfunc(xr);
iter = iter + 1;
if xr ~= 0, ea = abs((xr - xrold)/xr) * 100; end
if ea <= es | iter >= maxit, break, end
end
root = xr;
end