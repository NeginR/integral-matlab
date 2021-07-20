fun = @(x) x;

q=integral(fun,0,10)

x=linspace(-2,5,200);
y = x ;
plot(x,y);
hold on
y2 = x.^2/2;
plot(x,y2)
hold off