fun = @(x) x.^5;
%fun1= @(x) 1/7*x.^7;
q=integral(fun,4,10);

x=linspace(4,10,200);
% plot(x,fun1(x),'b')

hold on
grid on;
plot(x,zeros(size(x)))

for v = 4.0:0.5:9.5
    rectangle('Position',[v 0 0.5 fun(v+0.25)],'FaceColor','#998B8B')
end
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';

plot(x,fun(x),'y');
hold off;