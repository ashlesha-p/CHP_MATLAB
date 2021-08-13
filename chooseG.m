function G = chooseG(T,Q)
% Transforms the cluster state given by tableau to a graph state allowing
% to choose onto which qubits the Hadamard gates are applied

if isequal(Q,[]) || size(Q,1)==1
    qc=Q;
else
    prompt = 'Enter qubits on which the Hadamard gates are to be applied.\n';
%     disp(Q)
    qc=input(prompt);
end
% fprintf('inside chooseG \n')
G=toGraph(T,qc);

end