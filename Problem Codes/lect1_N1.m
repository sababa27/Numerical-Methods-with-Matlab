t0 = 0;
c0 = 100;
k = 0.175;

dt = 1;
n = 24;

%--------------

f = @(t) c0*exp(-k*t);
t = 0:0.1:n;
c = f(t);

figure(1);
plot(t, c, 'g');

%--------------

t = zeros(1, (n/dt)+1);
c = zeros(1, (n/dt)+1);
t(1) = t0;
c(1) = c0;

for i=1:1:(n/dt)
    t(i+1) = t(i)+dt;
    c_p = -k*c(i);
    c(i+1) = c(i) + c_p*dt;

    %disp([t(i) c(i)])
end

hold on;
plot(t, c, 'r');

%--------------
t = 0:0.1:n;
c = f(t);

figure(2);
semilogy(t,c, 'b');

