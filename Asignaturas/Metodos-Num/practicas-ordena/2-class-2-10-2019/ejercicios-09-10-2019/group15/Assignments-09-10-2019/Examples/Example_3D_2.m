% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Example 3-D - 2 Example of a graphic of a surface in space.

% We define the mesh, the intervals in which we want to compute f(x,y) as
% the vectors: x=[-3, -2, ... ,2 ,3], y=[-3, -2, ... , 1, 2].
x=-1:.01:1; y=-3:1:2;

% We use the meshgrid function to transform the intervasls of the x and y
% variables into an array that matlab can operate with.
[xx,yy]=meshgrid(x,y);

% We now evaluate our function in the specified domain and save the result
% on a variable named "zz".
zz=xx.^2-yy.^2;

% We use the "figure" command in order to create the window in which the
% surface will finally be graphed.
figure

% surf(xx,yy,zz) creates a 3D surface plot, which is a 3D surface that has
% solid edge colors and solid face colors. The function plots the values in
% matrix zz as heights above a grid in the x-y plane defined by xx and yy.
% The color of the surface varies according to the heights specified by zz.
surf(xx,yy,zz)

% We just name each axis.
xlabel('x axis');
ylabel('y axis');
zlabel('z axis');

% We use the mesh(xx,yy,zz) command. This command is very similar to
% "surf(xx,yy,zz)". Unique difference: instead of graphing a smooth
% surface, it joins each adjacent point in zz in the domain specified by
% the meshgrid [xx, yy].
mesh(xx,yy,zz);

% With the "shading interp" command we vary the colour in each face (and
% the line segments get smoothed, too) of the surface.
shading interp

% We add the "colorbar" function to display a vertical colorbar next to the
% graphic (by default, it is displayed at its right). Colorbar shows the
% current colormap and indicates the mapping of data values into the
% colormap.
colorbar