%{
    Write a function called saddle that finds saddle points in the input matrix M. 
    For the purposes of this problem, a saddle point is defined as an element 
    whose value is greater than or equal to every element in its row, and less than 
    or equal to every element in its column. Note that there may be more than one 
    saddle point in M. Return a matrix called indices that has exactly two columns. 
    Each row of indices corresponds to one saddle point with the first element of the 
    row containing the row index of the saddle point and the second element containing 
    the column index. If there is no saddle point in M, then indices is the empty array.    
%}

function indices = saddle(M)

    [N,D]   = size(M);
    indices = [];
    for ii=1:N
        for jj=1:D            
            value = M(ii,jj);                               
            if value == max(M(ii,:)) && value == min(M(:,jj))            
                indices(end+1,:) = [ii, jj];
            end
        end
    end
end