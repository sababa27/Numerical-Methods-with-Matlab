c = 0.25;
g = 9.81;
v1 = 36;
t1 = 4;
m = 50:0.1:200;
f_m = sqrt(g*m/c).*tanh(sqrt(g*c./m)*t1) - v1;

plot(m, f_m, 'g');