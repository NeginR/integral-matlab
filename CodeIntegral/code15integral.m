fun = @(x) x.^3;
fun1= @(x) 1/4*x.^4;
q=integral(fun,0,10);

x=linspace(0,10,200);
 
plot(x,fun(x));
hold on
grid on;
plot(x,zeros(size(x)))

for v = 0.0:0.1:9.9
    rectangle('Position',[v 0 0.1 fun(v+0.1)],'FaceColor',	'#FFFF00')
end
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
plot(x,fun1(x),'r')
colororder('#D95319')
plot(x,fun(x));
hold off;