%This function returen matrix inverse A
%Inputes A : matrix A of size m ? m 
%        mdInv : Multiplicative Inverse of modular determinant in Zn
%Output Ainv :Matrix inverse in Zn
% https://www.mathworks.com/matlabcentral/fileexchange/64813-modular-matrix-inverse-in-zn
function Ainv = modMatrixInv(A,mdInv)
n=2;
 m=size(A,1);
 for i=1:m
     for j=1:m
          Aij=A;
          Aij([i],:)=[];
          Aij(:,[j])=[];         
          C(i,j)=(-1)^(i+j)*mod2det(Aij);
        %  C(i,j)=(-1)^(i+j)*det(Aij);
        
     end
 end
 Ainv=mod(mdInv*C',n);
%Ainv=C'/det(A);
end
