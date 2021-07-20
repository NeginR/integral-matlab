fun = @(x) sin(x);
fun1= @(x) cos(x);
q=integral(fun,0,10);

x=linspace(-2*pi,2*pi,200);
 
plot(x,fun(x));
hold on

grid on;
plot(x,zeros(size(x)))
plot(x,fun1(x))
%plot(0,y2)
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
area(x,fun(x))

hold off