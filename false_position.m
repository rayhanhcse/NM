fprintf('\n=== 1(c) False Position Method ===\n');
f = @(x) x^3 - x - 2;

a = 1; b = 2;
tol = 1e-5;

while abs(b - a) > tol
    c = (a*f(b) - b*f(a)) / (f(b) - f(a));
    fprintf('a=%.6f, b=%.6f, c=%.6f, f(c)=%.6f\n', a, b, c, f(c));
    if f(c) == 0
        break;
    elseif f(a)*f(c) < 0
        b = c;
    else
        a = c;
    end
end
root_FP = c