function Q = rKsubMat(m,k)
% !!!!!!!!! Q has reapted values for measureX/Yv2 !!!!!!!
% Calculates all submatrices with rank k of a matrix m (not a tableau) and 
% all the combinations of columns that form a sub-matrix of rank k together with the first k rows
[rows, columns] = size(m);
    n=rows;
if k>n
    error('input rank > number of qubits')
end
 sk=[];
 Q=[]; 
subrows = num2cell(nchoosek(1:n, k), 2);
subcols = num2cell(nchoosek(1:n, k), 2);
% celldisp(subrows)

jj=1;


% % % % subc = cellfun(@(cols) m(1:k, cols), subcols, 'UniformOutput', false);
% % % % for j=1:length(subc)
% % % %         if gfrank(subc{j,1},2)==k
% % % %             sk(:,:,jj)=subc{j,1};
% % % %             q=subcols{j,1};
% % % %             Q(jj,:)=setdiff(1:columns,q);
% % % %             jj=jj+1;
% % % %             
% % % %         end
% % % % 
% % % % end

% sk


subr = cellfun(@(rows) m(rows, :), subrows, 'UniformOutput', false);
% celldisp(subr)

for i=1:length(subr)
    sr(:,:,i)=subr{i,1};
    

    subc=cellfun(@(cols) sr(:, cols,i), subcols, 'UniformOutput', false);
%     sr

end
    for j=1:length(subc)
       
        if isequal(subc{j,1},[])
            q=[];
            Q(jj,:)=setdiff(1:columns,q);
            jj=jj+1;
        elseif ~isequal(subc{j,1},[]) && gfrank(subc{j,1},2)==k
            sk(:,:,jj)=subc{j,1};
            q=subcols{j};
            Q(jj,:)=setdiff(1:columns,q);
            jj=jj+1;
        end
        

% % %         sc(:,:,(i-1)*length(subr)+j)=subc{j,1};

    end

 

end