fprintf('\n=== 2(b) Least Squares Method ===\n');
Xdata = [1 2 3 4 5];
Ydata = [2.2 2.8 3.6 4.5 5.1];

n = length(Xdata);
A = [sum(Xdata.^2) sum(Xdata); sum(Xdata) n];
B = [sum(Xdata.*Ydata); sum(Ydata)];

coeff = A\B;
a = coeff(1);
b = coeff(2);

fprintf('Best fit line: y = %.4f x + %.4f\n', a, b);

% Plot
figure;
plot(Xdata,Ydata,'ro','MarkerFaceColor','r');
hold on;
y_fit = a*Xdata + b;
plot(Xdata,y_fit,'b-','LineWidth',1.5);
grid on;
xlabel('X'); ylabel('Y');
title('Least Squares Fit');
legend('Data points','Best fit line');


