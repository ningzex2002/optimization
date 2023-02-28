% Group member: Ningze Xia, Yueer Liu
% Define the input: x1 is the initial point, tol is the tolerance
x0 = [-2;2];
tol = 10^-4;
% Apply the function
x_final = grad_desc('grad',x0,tol);
x_final

%evaluate the objective function
f = 100*(x_final(2)-x_final(1)^2)^2+(1-x_final(1))^2;
disp("the value of f is "+ f + " which is very close to 0, so we're done evaluation.")