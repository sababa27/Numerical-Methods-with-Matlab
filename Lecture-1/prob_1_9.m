syms t A Q C;
eqn = (Q/A)*(3*(sin(t)^2)-1);
y = int(eqn, t) + C;
t0 = 0;
y0 = 0;

y_0 = subs(y, t, t0);

C = solve(y_0 == y0, C);
y = int(eqn, t) + C;

y

%%
A = 1250;
Q = 450;
t0 = 0;
y0 = 0;

n = 10;
dt = 0.1;

f = @(t) (Q*(2*t - 3*sin(2*t)))/(4*A);

t = 0:0.01:n;
y = f(t);

figure(1);
plot(t, y, 'g');

%---------

t = zeros(1, (n/dt)+1);
y = zeros(1, (n/dt)+1);
t(1) = t0;
y(1) = y0;

for i=1:1:(n/dt)+1
    t(i+1) = t(i) + dt;
    y_p = (Q/A)*(3*(sin(t(i))^2)-1);
    y(i+1) = y(i) + y_p*dt;
end

hold on;
plot(t, y, 'r');