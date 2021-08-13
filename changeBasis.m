function RT = changeBasis(T,R)
%%%% doen't work properly!!!!!!!!!!!!!!!!!!!!!!!!!
% Calculates (R.Dx|R.Dz|R.r) and (R.Sx|R.Sz|R.r)
[rows, columns] = size(T);
 n = (columns - 1) / 2;
 RTD=[R*T(1:n,1:n),R*T(1:n,n+1:2*n),R*T(1:n,2*n+1);];
 RTS=[R*T(n+1:2*n,1:n),R*T(n+1:2*n,n+1:2*n),R*T(n+1:2*n,2*n+1);];
 RT=mod([RTD;RTS;],2); 
end