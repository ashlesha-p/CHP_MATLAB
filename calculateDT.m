function [T,D]=calculateDT(S)
% Calculate destabilizer and tableau from stabilizer matrix

[n,m]=size(S);
if m~=2*n
    error('Invalid S, m!=2*n')
end
D=zeros(n,m);
ST=[S(:,n+1:m),S(:,1:n)];
STI=inv(sparse(ST));
I=eye(n);
for i=1:n
    D(i,:)=STI*I(:,i);
end

T=[D,zeros(n,1);S,zeros(n,1);];

full(D)
full(T)

end