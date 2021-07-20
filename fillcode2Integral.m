fun = @(x) x;

q=integral(fun,0,10);

x=linspace(-2,6,200);
y = x ;
plot(x,y);
hold on

grid on;
plot(x,zeros(size(x)))
plot(0,y2)
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
area(x,y)
hold off
