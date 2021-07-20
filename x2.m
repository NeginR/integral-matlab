fun = @(x) x.^2;
fun1= @(x) 1/3*x.^3;
q=integral(fun,0,10);

x=linspace(-10,10,200);
 
plot(x,fun(x));
hold on
grid on;
plot(x,zeros(size(x)))
plot(x,fun1(x),'b')

ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
area(x,fun(x))
colororder('y')
hold off