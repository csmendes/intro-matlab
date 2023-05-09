%{
    Write a function called minimax that takes M, a matrix input argument 
    and returns mmr, a row vector containing the absolute values of the 
    difference between the maximum and minimum valued elements in each row. 
    As a second output argument called mmm, it provides the difference between 
    the maximum and minimum element in the entire matrix. See the code below for an example: 
        
        >> A = randi(100,3,4)
        A =
            66    94    75    18
             4    68    40    71
            85    76    66     4
        >> [x, y] = minimax(A)
        x =
            76    67    81
        y =
            90
%}

function [mmr, mmm] = minimax(M)
    mmr = max(M,[],2) - min(M,[],2, 'linear');
    s = M(:);        
    mmm =  max(s) - min(s);
    mmr = reshape(mmr, [size(mmr, 2), size(mmr, 1)]); size(mmr, 2);
    mmm = reshape(mmm, [size(mmm, 2), size(mmm, 1)]); size(mmm, 2);
end
