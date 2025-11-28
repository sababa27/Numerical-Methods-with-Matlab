function I = MyTrap(func, a, b, n)
    if nargin < 4
        error('4 input arguments required: func, a, b, n')
    end
    
    if b <= a
        error('Upper bound (b) must be greater than lower bound (a)')
    end
    
    x = a; 
    h = (b - a)/n;
    
    s = func(a);
    
    for i = 1 : n - 1
        x = x + h;
        s = s + 2 * func(x);
    end
    
    s = s + func(b);
    
    I = (b - a) * s / (2 * n);
end