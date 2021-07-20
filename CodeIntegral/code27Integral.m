fun = @(x) x.^3;
fun1= @(x) 1/4*x.^4;
q=integral(fun,0,10);

x=linspace(0,10,200);
plot(x,fun1(x),'r') 

hold on
grid on;
plot(x,zeros(size(x)))
%pgon = polyshape([0 0 1 3], [0 3 3 5]);
%plot(pgon)

ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';

colororder('#D95319')
plot(x,fun(x));
for v = 0.0:1.0:9.0
    a = polyshape([v v v+1 v+1],[0 fun(v) fun(v+1) 0]);
    plot(a)
end
plot(x,fun(x),'r');
hold off