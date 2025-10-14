clear
k = 0.08;
v0 = (4/3)*pi*(2.5)^3;
t0 = 0;
c = -(4)*pi*k*(3/(4*pi))^(2/3);

n = 10;
dt = 0.25;

t = zeros(1, n/dt+1);
v = zeros(1, n/dt+1);
t(1) = t0;
v(1) = v0;

dvdt = @(v) c*(v^(2/3))

for i=1:1:(n/dt)
    t(i+1) = t(i) + dt;
    v(i+1) = v(i) + dt*dvdt(v(i));
end

disp(t)

hold on;
plot(t, v, 'g*');

