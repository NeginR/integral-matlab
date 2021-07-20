fun = @(x) x.^3;

q=integral(fun,0,10);

x=linspace(0,10,200);

plot(x,fun(x),'r');
hold on

grid on;
plot(x,zeros(size(x)))
area(x,fun(x))
colororder('g')

ax = gca;

ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';

rectangle('Position',[0 0 10 fun(5)],'FaceColor',	'red')
plot(x,fun(x),'g');
hold off