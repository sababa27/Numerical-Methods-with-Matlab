function I3 = int3D(f, xl, xu, yl, yu, zl, zu)
    nx = xu - xl;
    ny = yu - yl;
    nz = zl - zu;
    n0 = nx;
    if ny < n0
        n0 = ny;
    end

    if nz < n0
        n0 = nz;
    end
    nx = (nx/n0)*100;
    ny = (ny/n0)*100;
    nz = (nz/n0)*100;
    
    
end

function I2 = int2D(f, xl, xu, yl, yu)
    nx = xu - xl;
    ny = yu - yl;
    n0 = nx;
    if ny < n0
        n0 = ny;
    end
    nx = (nx/n0)*100;
    ny = (ny/n0)*100;
    hx = (xu-xl)/nx;
    hy = (yu - yl)/ny;

    x = linspace(xl, xu, nx);
    y = linspace(yl, yu, ny);
    
    s = zeros(ny);
    
    for i = 1:1:ny
        f0 = @(x) f(x, y(i));
        s(i) = trap(f0, xl, xu, nx);
    end

    f0 = @(s) f()

    
end

1 2 3

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