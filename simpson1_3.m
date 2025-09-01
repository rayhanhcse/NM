fprintf('\n=== 2(c) Simpson''s 1/3 Rule ===\n');
f = @(x) (x.^2 + 2*x + 1);

a = 1; b = 5;
n = 4; % must be even
h = (b-a)/n;

x = a:h:b;
y = f(x);

I = y(1) + y(end);
for i = 2:n
    if mod(i,2)==0
        I = I + 4*y(i);
    else
        I = I + 2*y(i);
    end
end
I = I * h/3;

fprintf('Integration result using Simpson''s 1/3 Rule: %.6f\n', I);

% Exact Value
I_exact = integral(f,a,b);
fprintf('Exact Integration Value: %.6f\n', I_exact);
