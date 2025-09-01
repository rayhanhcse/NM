fprintf('\n=== 1(a) Newton-Raphson Method ===\n');
f = @(x) x^3 - x - 2;
df = @(x) 3*x^2 - 1;

x0 = 1.5;
tol = 1e-5;
maxIter = 100;

for i = 1:maxIter
    x1 = x0 - f(x0)/df(x0);
    fprintf('Iter %d: x = %.6f, f(x) = %.6f\n', i, x1, f(x1));
    if abs(x1 - x0) < tol
        break;
    end
    x0 = x1;
end
root_NR = x1