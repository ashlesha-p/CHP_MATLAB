function QT = applyLC(T, Q)
% Apply local Clifford operation
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! Haven't checked
[rows, columns] = size(T);
 n =(columns - 1) / 2;
    
Dx=T(1:n,1:n);
Dz=T(1:n,n+1:2*n);

Sx=T(n+1:2*n2,1:n);
Sz=T(n+1:2*n2,n+1:2*n);

A=Q(1:n,1:n);
B=Q(1:n,n+1:2*n);

C=Q(n+1:2*n2,1:n);
D=D(n+1:2*n2,n+1:2*n);

QT=mod([(Dz*C+Dx*D),(Dz*A+Dx*B),zeros(n,1);(Sz*C+Sx*D),(Sz*A+Sx*B),zeros(n,1);],2);
end


