function F = CliffordEqFunction(S1,S2,Q)
n = size(S1,1);
m = size(S2,1);
l = size(Q,1);

if m ~= n
    error('Stabilizer dimensions do not match')
end

if l ~= 2*n
    error('Q has wrong dimension')
end

Sx1 = S1(:,1:n);
Sz1 = S1(:,n+1:2*n);
Sx2 = S2(:,1:n);
Sz2 = S2(:,n+1:2*n);

A = Q(1:n,1:n);
B = Q(1:n,n+1:2*n);
C = Q(n+1:2*n,1:n);
D = Q(n+1:2*n,n+1:2*n);

G =mod([Sz1,Sx1]*Q*[Sx2;Sz2],2);
F(1:n^2)=G(:);

for i = 1:n
    F(n^2+i) = mod(A(i,i)*D(i,i)+ B(i,i)*C(i,i)-1,2);
end


end