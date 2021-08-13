function s = getStabilizers(T)
% !!!!! Work on creating stabilizer string array !!!
[rows, columns] = size(T);
n = (columns - 1) / 2;
fprintf('Stabilzers - \n');
s=[];
for i=1:n
    if T(i+n,2*n+1)==1
        fprintf('-');
    end
    for j=1:n
        if T(i+n,j)==0 && T(i+n,j+n)==0
%             fprintf('I%d',j);
        elseif T(i+n,j)==0 && T(i+n,j+n)==1
%             s(i)=strcat(s(i),",","Z",num2str(j));
            fprintf('Z%d',j);
        elseif T(i+n,j)==1 && T(i+n,j+n)==1
%             s(i,j)=strcat("Y",num2str(j));
            fprintf('Y%d',j);
            
        elseif T(i+n,j)==1 && T(i+n,j+n)==0
%             s(i,j)=strcat("X",num2str(j));
            fprintf('X%d',j);
        end          
            
    end
    fprintf('\n');
end
    
end