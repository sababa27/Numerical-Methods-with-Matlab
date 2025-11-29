%{
y = a*x^b
logy = loga + b*log(x)
logy = a2 + b*log(x)
%}

x = 10:10:80;
y = [25 70 380 550 610 1220 830 1450];
[a r] = linregr(log10(x), log10(y));
a2 = a(2);
b = a(1);
a = 10^a2;



function [a, r2] = linregr(x,y)
n = length(x);
if length(y) ~= n, error('x and y must be same length'); end
x = x(:); y = y(:); % convert to column vectors
sx = sum(x); sy = sum(y);
sx2 = sum(x.*x); sxy = sum(x.*y); sy2 = sum(y.*y);
a(1) = (n*sxy - sx*sy)/(n*sx2-sx^2);
a(2) = sy/n - a(1)*sx/n;
r2 = ((n*sxy - sx*sy)/sqrt(n*sx2 - sx^2)/sqrt(n*sy2 - sy^2))^2;
% create plot of data and best fit line
xp = linspace(min(x),max(x),2);
yp = a(1)*xp + a(2);
plot(x,y,'o',xp,yp)
grid on
end