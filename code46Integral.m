fun = @(x) x.^2;
%fun1= @(x) cos(x);
q=integral(fun,0,10);

x=linspace(0,11,200);
%plot(x,fun1(x),'b') 

hold on
grid on;
plot(x,zeros(size(x)))
%pgon = polyshape([0 0 1 3], [0 3 3 5]);
%plot(pgon)

ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';

colororder('#00C76B')
plot(x,fun(x));
for v = 0.0:0.5:10.0
    a = polyshape([v v v+0.5 v+0.5],[0 fun(v) fun(v+0.5) 0]);
    plot(a)
end
plot(x,fun(x),'b');
hold off