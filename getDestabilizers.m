function getDestabilizers(T)
[rows, columns] = size(T);
n = (columns - 1) / 2;
fprintf('Destabilzers - \n');
for i=1:n
    if T(i+n,2*n+1)==1
        fprintf('-');
    end
    for j=1:n
        if T(i,j)==0 && T(i,j+n)==0
%             fprintf('I%d',j);
        elseif T(i,j)==0 && T(i,j+n)==1
            fprintf('Z%d',j);
        elseif T(i,j)==1 && T(i,j+n)==1
            fprintf('Y%d',j);
            
        elseif T(i,j)==1 && T(i,j+n)==0
            fprintf('X%d',j);
        end          
            
    end
    fprintf('\n');
end
    
end