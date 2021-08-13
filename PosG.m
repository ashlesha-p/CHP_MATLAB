function Q = PosG(T)
% fprintf('inside PosG \n')
[rows, columns] = size(T);
 n =(columns - 1) / 2;
    
Dx=T(1:n,1:n);
Dz=T(1:n,n+1:2*n);

Sx=T(n+1:2*n,1:n);
Sz=T(n+1:2*n,n+1:2*n);

k=gfrank(Sx,2);

if k==n
    Q=[];
    if isequal(diag(getSz(T)),zeros(n,1))==0
        fprintf('Stabilizer has operator Y instead of X.\n The possible groups of qubits onto which Phase gate can be applied -\n')
        Q=find(diag(getSz(T)));
        T=phase(T,Q);
    else
    fprintf('The graph state is uniquely defined and no Hadamard gates needed.\n')
    end
else
    Q=rKsubMat(Sx,k);
    [r,c]=size(Q);
    if r==1
        fprintf('The choice of qubits is unique.\n')
    end
    fprintf('The possible groups of qubits onto which Hadamards can be applied - \n');
    Q
end

end