t0 = 0;
dt = 2;

v0 = 0;

g = 9.81;
c = 0.25;
m = 68.1;

t(1) = t0;
v(1) = v0;

for i = 1:100
    t(i+1) = t0 + dt*(i);
    v_prime = g - (c/m) * v(i)^2;
    v(i+1) = v(i) + dt * v_prime;
end

for i = 1:7
    disp([t(i) v(i)])
end

disp([t(100) v(100)])