fun = @(x) tan(x);
%fun1= @(x) 1/7*x.^7;
q=integral(fun,0,1.2);

x=linspace(0,1.2,200);
% plot(x,fun1(x),'b')

hold on
grid on;
plot(x,zeros(size(x)))

for v = 0.0:0.2:1.0
    rectangle('Position',[v 0 0.2 fun(v+0.1)],'FaceColor','#FF84E5')
end
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';

plot(x,fun(x),'r');
hold off;