function G = toGraph(T,q);
% !!!!!!!! the negative eigenvalue case, what you have commented is wrong !!!!!!!!!!! 
% Transform stabilizer state into graph state
% Input: A stabilizer state in its tableau form and a list of qubits.
% Also, converts diagonal Y's to X's


% fprintf('inside toGraph \n')
[rows, columns] = size(T);
 n =(columns - 1) / 2;
 
T=H(T,q);


    
Dx=T(1:n,1:n);
Dz=T(1:n,n+1:2*n);

Sx=T(n+1:2*n,1:n);
Sz=T(n+1:2*n,n+1:2*n);

Inv=mod2inv(Sx);

if gfrank(Sx,2)~=n
    error('Sx is not full rank')
end

G=[zeros(n),eye(n),zeros(n,1);eye(n),mod(Inv*Sz,2),zeros(n,1);];

if isequal(diag(getSz(G)),zeros(n,1))==0
    fprintf('Stabilizer has operator Y instead of X.\n Converting to a graph state...\n')
    qp=find(diag(getSz(G)));
    G=phase(G,qp);
end

% if isequal(T(:,2*n+1),zeros(2*n,1))==0
%         % Reference - Kok P., Lovett B. - Introduction to Optical Quantum
%         % Information Processing (2010, CUP), pg 69.
%         
%         fprintf('cluster state with a number of negative stabilizer eigenvalues. \n Converting to a graph state...\n')
%         T(:,2*n+1)=zeros(2*n,1);
% 
% end
end