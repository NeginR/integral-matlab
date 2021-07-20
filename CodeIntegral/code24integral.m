fun = @(x) sin(x);

q=integral(fun,0,10);

x=linspace(0,pi,200);
 
plot(x,fun(x));
hold on

grid on;
plot(x,zeros(size(x)))

rectangle('Position',[0 0 pi fun(pi/2)],'FaceColor',	'#0000FF')
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
area(x,fun(x))
colororder('y')

hold off