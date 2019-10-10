% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Example 5 Plot of a sphere of unity radius as a level surface of a
% function of 3 variables.

% We define an annonymous function on three variables: x, y and z; such
% that: f(x,y,z)=x^2+y^2+z^2
fun=@(x,y,z)(x.^2+y.^2+z.^2);

% We use the meshgrid function to transform the intervasls of the x, y and
% z variables into an array that matlab can operate with.
[X, Y, Z]=meshgrid(-2:0.1:2,-2:0.1:2,-2:0.1:2);

% We now evaluate our function in the specified domain and save the result
% on a variable named "val".
val=fun(X,Y,Z);

% As we have a function f:R3-->R, we need R4 to represent our function.
% Since this is not possible, we will plot the equivalent of a countour
% surface for R4, a level surface (f(x,y,z)=cte) in R3. We specify the
% domain, the value of our function and the level at which we want to
% compute the isosurface.
fv=isosurface(X,Y,Z,val,1);

% We now use the patch function to plot the isosurface we have just
% computed.
p=patch(fv);

% We compute the normal of the vertices of our patch p (of the
% corresponding isosurface), so that the edges of our 3D polygon don't
% look sharp and the figure appears smoother.
isonormals(X,Y,Z,val,p)

% We now change the color of our 3D polygon to be red and hide the edges
% so it looks smoother.
set(p,'FaceColor','red');
set(p, 'EdgeColor','none');

% We now change the ratio of our axes to be 1, 1, 1. This means we will use
% the same scale for the x, y and z axes.
daspect([1,1,1])

% We set the view of the window to the default 3. This is a particular
% view that looks at the object from an isometric perspective.
view(3); 

% We now fix the axes to be tight, which means that the axes will extend as
% far as the figure does.
axis tight;

% Since the surface looks the same from every angle, we add a light camera
% so we can distinguish it by its light and shadows. By default the
% camera is up and to the right.
camlight

% We change the algorithm used to create the light so that it is smoother.
lighting phong

% Finally, we remove the axes of our view.
axis off


