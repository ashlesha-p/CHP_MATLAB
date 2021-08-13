function Ti = fromStabilizers(G)
% !!!!!!!! the negative eigenvalue case. Check all other functions !!!!!!!!!!! 
% Obtains cluster states from a list of stabilizers in the form {“ooooo”,
% “ooooo”, etc} where o can be x, X, y, Y, z, Z, i, I. It does not immediately write the
% destabilizers, first the graph should be defined using ToGraph[] or ChooseG[].

% !!!!!!!!!!!!! Work on the invalid/insuffiecient generator case and what if one of the stabilzers is product of other stabilzers !!!!!!!!!!
% !!!!!!!!!!!!! Doesn't give the correct destab


n=length(G);
S=zeros(n,2*n);
maxq=0;
k=1;
% % for i=1:n
% %     for j=1:2:length(g{i})
% %         p=g{i}(j);
% %         q=str2num(g{i}(j+1));
% % %         maxq=max(maxq,q(k));
% %        
% %         switch p
% %             case {'x','X'}
% %                 s=[1,0];
% %             case {'y','Y'}
% %                 s=[1,1];
% %             case {'z','Z'}
% %                 s=[0,1];
% %             case {'i','I'}
% %                 s=[0,0];
% %             otherwise
% %                 error('Stabilizer is not a Pauli operator')
% %         end
% %         
% %         S(i,q)=s(1);
% %         S(i,q+n)=s(2);
% %         
% %     end
% % end

Ti=zeros(2*n,2*n+1);
for j=1:n
    g=G(j);
p=regexp(char(g),'([A-Z,a-z]+)','match');
q=str2double(regexp(g,'[\d]+','match'));
r=regexp(char(g),'([-]+)','match');
if isequal(r,{'-'})
    Ti(j+n,2*n+1)=1;
end
for i=1:length(q)
 switch p{i}
            case {'x','X'}
                s=[1,0];
            case {'y','Y'}
                s=[1,1];
            case {'z','Z'}
                s=[0,1];
            case {'i','I'}
                s=[0,0];
            otherwise
                error('Stabilizer is not a Pauli operator')
        end
        
        S(j,q(i))=s(1);
        S(j,q(i)+n)=s(2);
end

end
% Ti=zeros(2*n,2*n+1);
Ti(n+1:2*n,1:n)=S(:,1:n); %Sx
Ti(n+1:2*n,n+1:2*n)=S(:,n+1:2*n); %Sz


        
            




% % if length(q)~=n
% %     error('Invalid stabilizer generator')
% % end
% T
end