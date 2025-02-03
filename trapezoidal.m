% Trapezoidal Rule with User Input

% Prompt the user to enter the function as a string and convert to an anonymous function
f_str = input('Enter the function f(x) as a string (e.g., x.^2): ', 's');
f = str2func(['@(x) ' f_str]);

% Get the limits of integration from the user
a = input('Enter the lower limit of integration a: ');
b = input('Enter the upper limit of integration b: ');

% Get the number of subintervals (n) from the user
n = input('Enter the number of subintervals (n): ');

% Calculate the step size (h)
h = (b - a) / n;

% Create a vector of x values
x = a:h:b;

% Compute the corresponding function values
y = f(x);

% Apply the Trapezoidal Rule formula
integral = (h / 2) * (y(1) + 2 * sum(y(2:end-1)) + y(end));

% Display the result
fprintf('Approximate integral using Trapezoidal Rule: %.6f\n', integral);
