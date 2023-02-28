function g = grad(x)
    % the gradient of Rosenbrock's function
    g = [2*x(1)-400*x(1)*x(2)+400*x(1)^3-2; -200*x(1)^2 + 200*x(2)];
end

