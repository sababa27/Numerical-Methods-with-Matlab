function out=fibo(n)
    a = 1;
    b = 1;
    
    for i = 1:1:(n-2)
        temp = a;
        a = b;
        b = temp + b;
    end

    out = b;
end