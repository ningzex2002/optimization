function [x,N] = grad_desc(grad,x,epsilon)
    % grad is the file containing the gradient function
    % x is the starting line search point
    % epsilon is the tolerance
    N = 0; % N is the number of iterations required to satisfy the stopping condition
   
    while norm(feval(grad,x)) > epsilon % the stopping condition
            d = -feval(grad,x); % update the search direction
            alpha = secant_method(grad,x,d); % update the new alpha
            x_new = x - alpha*feval(grad,x); % use the gradient descent formula to calculate new x
            x = x_new; % update x
            N = N+1; % update the number of iterations
    end
   
    disp("The required number of iterations is "+ N) % print the number of iterations        
end

