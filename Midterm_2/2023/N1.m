v = @(t) 3500.*sin(140*pi*t).*exp(-63*pi*t);
v2 = @(t) v(t).*v(t);
R = 50;
mili = 10^(-3);
a = 0*mili;
b = 20*mili;
n = 20/0.1;
E = trap(v2, a, b, n)/R;

Evec = zeros(1,25);
Tvec = zeros(1,25);
for i = 1:1:25
    b = i*mili;
    n = (b-a)/(0.1*mili);
    Evec(i) = trap(v2, a, b, n)/R;
    Tvec(i) = i;
end

plot(Tvec, Evec)



function I = trap(func,a,b,n,varargin)
if nargin<3,error('at least 3 input arguments required'),end
if ~(b>a),error('upper bound must be greater than lower'),end
if nargin<4|isempty(n),n = 100;end
x = a; h = (b - a)/n;
s=func(a,varargin{:});
for i = 1 : n - 1
x = x + h;
s = s + 2*func(x,varargin{:});
end
s = s + func(b,varargin{:});
I = (b - a) * s/(2*n);
end

