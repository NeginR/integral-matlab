fun = @(x) x;

q=integral(fun,0,10);

x=linspace(0,7,200);

plot(x,fun(x),'y');
hold on

grid on;
plot(x,zeros(size(x)))
area(x,fun(x))
colororder('y')

ax = gca;

ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';

rectangle('Position',[0 0 7 fun(3.5)],'FaceColor',	'#0000FF')
plot(x,fun(x),'y');
hold off