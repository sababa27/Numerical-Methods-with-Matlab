A = 1250;
Q = 450;
a = 150;
t0 = 0;
y0 = 0;

n = 10;
dt = 0.001;

t = zeros(1, (n/dt)+1);
y = zeros(1, (n/dt)+1);
t(1) = t0;
y(1) = y0;

for i=1:1:(n/dt)
    t(i+1) = t(i) + dt;
    y_p = 3*(Q/A)*(sin(t(i))^2)-(a/A)*((1+y(i))^1.5);
    y(i+1) = y(i) + y_p*dt;
end

plot(t, y);
