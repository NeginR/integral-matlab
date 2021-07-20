[X,Y] = meshgrid(1:0.5:10,1:20);
Z = X.^2 + Y.^5 ;
s=surf(X,Y,Z,'FaceColor','red');
hold on
Z1 = 1/3*X.^3 + X.*Y.^5;
surf(X,Y,Z1,'FaceColor','green');
Z2 = Y.*X.^3 + 1/6*Y.^6;
surf(X,Y,Z2,'FaceColor','blue');
hold off