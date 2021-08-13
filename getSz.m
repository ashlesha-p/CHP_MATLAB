function Sz = getSz(T)
[rows, columns] = size(T);
 n =(columns - 1) / 2;
    
Dx=T(1:n,1:n);
Dz=T(1:n,n+1:2*n);

Sx=T(n+1:2*n,1:n);
Sz=T(n+1:2*n,n+1:2*n);
end