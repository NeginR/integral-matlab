fun = @(x) sin(x);
fun1= @(x) cos(x);
q=integral(fun,1,3);

x=linspace(1,3,200);
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


a = polyshape([1 1 3 3],[0 fun(1) fun(3) 0]);
plot(a)
colororder('magenta')


hold off