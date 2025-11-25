clear;

x = -5:0.01:5;
func = @(x) x.^2 - 2;

xl = 0;
xu = 2;
es = 0.1;
maxit = 50;
[root,ea,iter] = quadRoot(func, xl, xu, es, maxit);

disp(root)
disp(ea)
disp(iter)


function [root,ea,iter] = quadRoot(func, xl, xu, es, maxit)
    iter = 0;
    ea = 0;

    if func(xl) == 0
        root = xl;
        return
    elseif func(xu) == 0
        root = xu;
        return
    elseif (sign(func(xl)) == sign(func(xu)))
        error('no sign change')
    end
    
    ea = 100;
    xr = xl;

    while(1)
        iter = iter + 1;

        step = (xu-xl)/4;
        x1 = xl + 1*step;
        x2 = xl + 2*step;
        x3 = xl + 3*step;

        f1 = func(x1);
        f2 = func(x2);
        f3 = func(x3);
        
        if(sign(func(xl)) ~= sign(f1))
            xu = x1;
        elseif(sign(f1) ~= sign(f2))
            xl = x1;
            xu = x2;
        elseif(sign(f2) ~= sign(f3))
            xl = x2;
            xu = x3;
        elseif(sign(f3) ~= sign(func(xu)))
            xl = x3;
        end
        
        xrold = xr;
        xr = (xl + xu)/2;
        
        if xr ~= 0
            ea = abs((xr - xrold)/xr) * 100;
        end

        if ea <= es || iter >= maxit
            break;
        end


    end
    root = xr; 


end
