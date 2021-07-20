fun = @(x) x;
fun1= @(x) 1/2*x.^2;
q=integral(fun,0,10);

x=linspace(0,10,200);
 
plot(x,fun(x));
hold on
grid on;
plot(x,zeros(size(x)))
plot(x,fun1(x),'g')
for v = 0.0:1.0:9.0
    rectangle('Position',[v 0 1.0 fun(v)],'FaceColor',	'#0000FF')
end
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';

colororder('#00FFFF')
hold off