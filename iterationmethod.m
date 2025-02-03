% Fixed-point Iteration Method with User Input

% Prompt the user for the function g(x) as a string and convert to an anonymous function
f_str = input('Enter the function g(x) as a string (e.g., cos(x)): ', 's');
g = str2func(['@(x) ' f_str]);

% Get the initial guess from the user
x0 = input('Enter the initial guess x0: ');

% Get the maximum number of iterations
maxIter = input('Enter the maximum number of iterations: ');

% Get the tolerance for convergence
tol = input('Enter the tolerance for convergence: ');

% Initialize variables
x = x0; 
iter = 0;

% Start the iteration loop
while iter < maxIter
    x_new = g(x);  % Apply the iteration formula
    iter = iter + 1;
    
    % Check for convergence
    if abs(x_new - x) < tol
        fprintf('Converged after %d iterations.\n', iter);
        break;
    end
    
    % Update x for the next iteration
    x = x_new;
end

% If the loop finishes without convergence, display a message
if iter == maxIter
    fprintf('Maximum iterations reached without convergence.\n');
end

% Display the solution
fprintf('The solution is x = %.6f\n', x);
