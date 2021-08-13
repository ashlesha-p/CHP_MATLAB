function R = findBasis(T1, T2)
%%%% doen't work properly!!!!!!!!!!!!!!!!!!!!!!!!!
% R*Sx1=Sx2
% R*Sz1=Sz2
% Det(R) !=0
[rows1, columns1] = size(T1);
n1 =(columns1 - 1) / 2;
[rows2, columns2] = size(T2);
n2 =(columns2 - 1) / 2;

if n1~=n2
    error('number of qubits not equal')
end
R1= mod(T2(n2+1:2*n2,1:n2)*mod2inv(T1(n2+1:2*n2,1:n2)),2);
R2= mod(T2(n2+1:2*n2,n2+1:2*n2)*mod2inv(T1(n2+1:2*n2,n2+1:2*n2)),2);


if mod2det(R1)==0 && mod2det(R2)~=0
    R=R2;
elseif mod2det(R1)~=0 && mod2det(R2)==0
    R=R1;
elseif mod2det(R1)~=0 && mod2det(R2)~=0
    if isequal(R1,R2)
%         fprintf('R1=R2')
        R=R2;
    else
        error('Two different solutions')
    end
elseif mod2det(R1)==0 && mod2det(R2)==0
    error('no solution. Det(R)=0')
else
    R=R1;
end

end