fun = @(x) x.^3;
fun1= @(x) 1/4*x.^4;
q=integral(fun,0,10);

x=linspace(0,10,200);
 
plot(x,fun(x));
hold on
grid on;
plot(x,zeros(size(x)))
plot(x,fun1(x),'r')

ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
area(x,fun(x))
colororder('#EDB120')
hold off