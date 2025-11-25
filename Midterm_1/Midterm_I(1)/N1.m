A = [   
        0.5 2 3 1;
        -2 1 2 3;     
        0 0 1 0;
        2 -2 -0.5 1
];

%a)
A(2,:); 

%b)
v = [A(2,2) A(3,2)]; 

%c)
function out = matSum(A)
    out = 0; 
    s = size(A);
    for i = 1:1:s(1)
        for j = 1:1:s(2)
            out = out + A(i, j);
        end
    end
end
sum = matSum(A)



%d)
function out = matB(A)
    s = size(A);
    out = zeros(s(1), s(2));
    for i = 1:1:s(1)
        for j = 1:1:s(2)
            if A(i,j) > 0
                out(i,j) = A(i,j);
            end
        end
    end
end
B = matB(A);


%e)
b = [1; 1; 0; 1];
x = inv(A)*b;






