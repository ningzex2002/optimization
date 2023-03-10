function [alpha1] = secant_method(grad, x, d)
    % grad is the file containing gradient function
    % x is the starting line search point
    % d is the search direction
    format long g
    eps = 10^-4; % the epsilon
    alpha0 = 0; % the first initial alpha
    alpha1 = 0.001; % the second initial alpha
    while(abs(d'*feval(grad, x+alpha1*d))>eps*abs(d'*feval(grad, x))) % the stopping condition
        % Secant method formula
        new_alpha = alpha1 - (alpha1 - alpha0)/(d'*(feval(grad, x+alpha1*d)) - (d'*feval(grad,x + alpha0*d))) * (d'*feval(grad,x + alpha1*d));
        % Update two alpha values
        alpha0 = alpha1;
        alpha1 = new_alpha;
    end
end

