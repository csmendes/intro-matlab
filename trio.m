%{
    Write a function called trio that takes two positive integer 
    inputs n and m. The function returns a 3n-by-m matrix called T. 
    The top third of T (an n by m submatrix) is all 1s, the middle 
    third is all 2-s while the bottom third is all 3-s. 
    For an example,see the code below:

    M = trio(2,4)
    M =
         1     1     1     1
         1     1     1     1
         2     2     2     2
         2     2     2     2
         3     3     3     3
         3     3     3     3
%}


function T = trio(n,m)
    T = ones(3*n, m);
    T(            1 : (1/3)*(3*n), :) = 1;
    T((1/3)*(3*n)+1 : (2/3)*(3*n), :) = 2;
    T((2/3)*(3*n)+1 : (3*n)      , :) = 3;
end