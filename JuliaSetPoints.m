function[natureArray] = JuliaSetPoints(complexArray, c, cutoff)
% Function that determines whether or not each point in a grid of complex
% values is a member of the Julia set associated with a specified complex
% value c. Function outputs a 2D array that shows the number of iterations
% produced for each complex number using the IterateComplexQuadratic
% function.
%
% Inputs:   complexArray = 2D array that stores complex values that we need
%           to determine the nature of
%           c = complex value used to generate a particular Julia set
%           cutoff = determines maximum iterations to be performed
%
% Output:   natureArray = 2D array describing the nature of each complex
%           number in inputArray by showing the number of iterations
%
% Author:   Ibrahim Anees

% Storing the values of the number of rows and columns in the input array
[rows,columns] = size(complexArray);

% Pre-allocating the nature array
natureArray = zeros(rows,columns);

% Using a nested for loop to run through the 2D input array and create the
% 2D output array
for i = 1:rows % Cycling through each row
    for j = 1:columns % Cycling through each column
        
        % Calling on the IterateComplexQuadratic function to compute the
        % number of iterations for each complex number in the array
        iterations = IterateComplexQuadratic(complexArray(i,j), c, cutoff);
        
        % Setting the iteration value for row i, column j
        natureArray(i,j) = iterations;
        
    end
end

end