fun = @(x) x.^2;
fun1= @(x) 1/3*x.^3;
q=integral(fun,-5,9);

x=linspace(-5,9,200);
plot(x,fun1(x),'b') 

hold on
grid on;
plot(x,zeros(size(x)))
%pgon = polyshape([0 0 1 3], [0 3 3 5]);
%plot(pgon)

ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
area(x,fun(x))
colororder('b')
plot(x,fun(x),'b');


a = polyshape([-5 -5 9 9],[0 fun(-5) fun(9) 0]);
plot(a)
colororder('y')


hold off