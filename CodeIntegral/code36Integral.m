fun = @(x) x.^3;
fun1= @(x) 1/4*x.^4;
q=integral(fun,0,10);

x=linspace(0,10,200);
 plot(x,fun1(x),'b')

hold on
grid on;
plot(x,zeros(size(x)))

for v = 0.0:0.5:9.5
    rectangle('Position',[v 0 0.5 fun(v+0.25)],'FaceColor','g')
end
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';

plot(x,fun(x),'b');
hold off;