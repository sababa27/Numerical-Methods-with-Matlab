function out = fibo_recu(n)

    if n == 1 || n == 2
        out = 1;
    else
        out = fibo_recu(n-1) + fibo_recu(n-2);
    end

end