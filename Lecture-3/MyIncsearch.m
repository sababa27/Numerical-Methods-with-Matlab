function xb = myIncsearch(func, xmin, xmax, ns)
    if nargin < 3
        error('at least 3 arguments required')
    end

    if nargin < 4
        ns = 50;
    end

    x = linspace(xmin, xmax, ns);
    f = func(x);
    nb = 0;
    xb = [];

    for i = 1:1:length(x)-1
        if sign(f(i)) ~= sign(f(i+1))
            nb = nb + 1;
            xb(nb, 1) = f(i);
            xb(nb, 2) = f(i+1);
        end
    end

end