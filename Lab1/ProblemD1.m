% Ivan Wang 501086429  

% Problem D.1

aCopy = A; % Make a copy of matrix A

% (a)
aCopy(:)
% Reshapes the 5x4 Matrix A into a column vector

% (b)
aCopy([2 4 7])
% Prints out the 2nd, 4th, and 7th index of column vector

% (c)
[aCopy>=0.2]
% Creates a logical boolean matrix where if the statement is true
% it replaces the index with 1
% otherwise it replaces the index with 0

% (d)
aCopy([aCopy>=0.2])
% Creates a column vector of the values that are greater than 0.2

% (e)
aCopy([aCopy>=0.2]) = 0
% Sets all values that are greater than 0.2 to 0 in the matrix
