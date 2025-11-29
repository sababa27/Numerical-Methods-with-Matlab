f = @(x, y, z) x^2*cos(x*y*z^2);
xl = -1;
xu = -0.5;
yl = -1;
yu = 2;
zl = -pi;
zu = pi;
I = int3D(f, xl, xu, yl, yu, zl, zu);

fVec = @(x, y, z) x.^2.*cos(x.*y.*z.^2);
I

integral3(fVec,xl,xu,yl,yu,zl,zu)

function I = int3D(f, xl, xu, yl, yu, zl, zu)
    nx = xu - xl;
    ny = yu - yl;
    nz = zu - zl;

    n0 = nx;
    if ny < n0
        n0 = ny;
    end
    if nz < n0
        n0 = nz;
    end

    nx = 100*round(nx/n0,2);
    ny = 100*round(ny/n0,2);
    nz = 100*round(nz/n0,2);

    x = linspace(xl, xu, nx);
    y = linspace(yl, yu, ny);
    z = linspace(zl, zu, nz);
    
    w = zeros(nz, ny);

    for i = 1:1:nz
        for j = 1:1:ny
            func = @(x) f(x, y(j), z(i));
            w(i, j) = trap(func, xl, xu, nx);
        end
    end
    
    v = zeros(1,nz);
    for i = 1:1:nz
        v(i) = trapz(y, w(i,:));
    end

    I = trapz(z, v);
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