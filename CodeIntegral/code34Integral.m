fun = @(x) sqrt(x);

q=integral(fun,20,100);

x=linspace(20,100,200);
%plot(x,fun1(x),'b') 

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


a = polyshape([20 20 100 100],[0 fun(20) fun(100) 0]);
plot(a)
colororder('g')


hold off