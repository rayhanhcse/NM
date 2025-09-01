A = [2 3 -1; 
     4 1  2; 
    -2 5  1];
B = [5; 6; -3];

detA = det(A);

Dx = A; Dx(:,1) = B; detDx = det(Dx);
Dy = A; Dy(:,2) = B; detDy = det(Dy);
Dz = A; Dz(:,3) = B; detDz = det(Dz);

x = detDx / detA;
y = detDy / detA;
z = detDz / detA;

X = [x; y; z];      % solution vector [x; y; z]
disp('Solution vector [x; y; z]^T =');
disp(X);
