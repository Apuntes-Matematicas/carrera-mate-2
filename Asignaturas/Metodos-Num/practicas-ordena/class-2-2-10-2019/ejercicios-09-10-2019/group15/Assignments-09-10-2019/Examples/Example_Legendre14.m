% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Example Legendre14

% We define the mess (the points in which we want to compute f(x)) as a
% vector such as: x=[-1, -0.99, -0.98, ..., 0.98, 0.99, 1].
x=-1:.01:1;

% We create the vectors p1, p2, p3 and p4 to store the values of the
% corresponding Legendre polynomials of order 1, 2, 3 and 4. We compute
% f(x) for every point in our domain x.
% n=1 --> f(x)=x
% n=2 --> f(x)=(3/2)x^2-1/2
% n=3 --> f(x)=(5/2)x^3-(3/2)x
% n=4 --> f(x)=(35/8)x^4-(15/4)x^2+3/8
p1=x;
p2=(3/2)*x.^2-1/2;
p3=(5/2)*x.^3-(3/2)*x;
p4=(35/8)*x.^4-(15/4)*x.^2+3/8;

% We now plot each one of these functions "p" against the corresponding values
% of the mesh "x" and change the line specifications "lineSpecs". Each
% (x,p,lineSpecs) represents one function.
% 'r:'  --> red line formed by consecutive dots (.....).
% 'g--' --> green line formed by consecutive hyphens (-----).
% 'b-'  -->a continous blue line (_____).
% 'm-'  --> a continous magenta line (_____).
plot(x,p1,'r:',x,p2,'g--',x,p3,'b-',x,p4,'m-')

% We remove the box outline (top and righ lines) with the following
% command.
box off

% We create a legend to specify which line corresponds to which Legendre
% polynomial. It is a vector that is in correspondance with the p1, p2, p3
% and p4 of the plot function. The "\it" specifies that what comes after it
% should be written in italics.
legend('\it n=1', 'n=2', 'n=3', 'n=4')

% We now set both axis so that the X-axis is named "x" and the Y-axis is
% named "Pn". We also set the font size of both labels to 12 and the font to
% be written in italics.
xlabel('x','Fontsize',12,'FontAngle','italic')
ylabel('Pn','FontSize',12,'FontAngle','italic')

% We add a title to the box, "Polinomios de Legendre" and change its font
% size to 14.
title('Polinomios de Legendre','FontSize',14)

% We finnally add a text inside the box. First we specify its position with
% respect to (0,0). Then we specify the text that will be displayed. The
% following three dots mean that the command follows in the next line. We
% set the font size to 12 and the font style to italic.
text(-.6,.7 ,'(n+1)P{n+1}(x)=(2n+1)xPn(x)-n P{n-1}(x)',...
    'Fontsize',12,'FontAngle','italic')