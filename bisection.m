fprintf('\n=== 1(b) Bisection Method ===\n');
f = @(x) x^3 - x - 2;

a = 1; b = 2;
tol = 1e-5;

while (b - a)/2 > tol
    c = (a+b)/2;
    fprintf('a=%.6f, b=%.6f, c=%.6f, f(c)=%.6f\n', a, b, c, f(c));
    if f(c) == 0
        break;
    elseif f(a)*f(c) < 0
        b = c;
    else
        a = c;
    end
end
root_Bis = (a+b)/2
