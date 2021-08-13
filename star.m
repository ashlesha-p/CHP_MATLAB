function T = star(n,q)
% Generates n-qubit star graph state tableau with qubit q at the center.
adjc=zeros(n);
adjc(q,:)=ones(1,n);
adjc(:,q)=ones(1,n);
adjc(q,q)=0;
adjc;
T=fromAdjcM(adjc);
end

