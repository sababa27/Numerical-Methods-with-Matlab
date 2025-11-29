x = [0 1 2 3 4 5 6 7];
y =[10 13 12 14 13 15 16 17];

trapVect(x, y)

function I = trapVect(x, y)
    n = length(x);
    I = 0;
    for i = 1:1:n-1
        I = I + (x(i+1)-x(i))*(y(i+1)+y(i))/2;
    end
end