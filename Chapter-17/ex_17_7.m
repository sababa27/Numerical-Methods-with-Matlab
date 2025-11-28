x = linspace (-1,1,5);
y = 1./(1 + 25*x.^2);
x0 = linspace(-1,1);
p = polyfit(x,y,4);
y0 = polyval(p,x0);
yr = 1./(1 + 25*x0.^2);


%plot(x,y,'o',x0,y0,x0,yr,'--')

plot(x,y);
hold on;
plot(x0, y0);
hold on;
plot(x0, yr, '--');