[X,Y] = meshgrid(1:0.5:10,1:20);
Z = sin(X) + cos(Y);
s=surf(X,Y,Z,'FaceColor','red');
hold on
Z1 = cos(X)+X.*cos(Y);
surf(X,Y,Z1,'FaceColor','green');
hold off
