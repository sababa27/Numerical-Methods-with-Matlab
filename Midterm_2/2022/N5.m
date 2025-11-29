func = @(x, y) exp(-y)*sin(2*x);
a = 0;
b = 1;
c = -2;
d = 2;
nx = 1000;
ny = 1000;
I = trap2d(func,a,b,c,d,nx,ny);
I


function I = trap2d(func,a,b,c,d,nx,ny)
    x = linspace(a, b, nx);
    y = linspace(c, d, ny);

    y2 = zeros(1, ny);

    for i = 1:1:ny
        f = @(x) func(x, y(i));
        y2(i) = trap(f, a, b, nx);
    end

    I = trapz(y, y2);
end


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


funcVec = @(x, y) exp(-y).*sin(2*x);
integral2(funcVec,a,b,c,d)