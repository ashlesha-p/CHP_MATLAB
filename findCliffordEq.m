function C = findCliffordEq(T1,T2)
[rows1, columns1] = size(T1);
n1 =(columns1 - 1) / 2;
[rows2, columns2] = size(T2);
n2 =(columns2 - 1) / 2;

if n1~=n2
    error('number of qubits not equal')
end
Sx2=T2(n2+1:2*n2,1:n2);
Sz2=T2(n2+1:2*n2,n2+1:2*n2);

Sx1=T1(n2+1:2*n2,1:n2);
Sz1=T1(n2+1:2*n2,n2+1:2*n2);



end
