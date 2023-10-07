% Ivan Wang 501086429

% Problem D.2

load ELE532_Lab1_Data.mat

% (a)
bCopy = B; % Create a copy of matrix B

tic
for i = 1:1024
    for j = 1:100
        if(bCopy(i,j) < 0.01) % Checks the condition at index i and j are less that 0.1
            bCopy(i,j) = 0; % if so sets the value to 0
        end
    end
end
toc

bCopy; % Prints out the changed matrix bCopy

% (b)

bCopy2 = B; % Create another clean copy of matrix B

tic
bCopy2([bCopy2 < 0.01]) = 0; % Indexing feature same function as the nested
toc                          % for loop where sets all values that are
                             % less than 0.01 to 0

bCopy2; % Prints out the changed matrix bCopy2                             

% (c)
% part (a) Elapsed time is 0.000969 seconds.
% part (b) Elapsed time is 0.000584 seconds.


