function[colourValuesOutput] = LookupColourValues(colour, colourNames, colourValuesInput)
% Function that looks up the colour values for a named colour, for a list
% of provided colours and their values. The function ignores the case of
% the name entered. If a colour is not found an error message is displayed
% and colour values of 0 0 0 are returned.
%
% Inputs:   colour = string containing the name of the colour wanted
%           colourNames = a cell array of colour names stored as strings
%           colourValuesInput = r x 3 2D array where each row contains
%           three colour values that correspond to the rows of colourNames
%
% Output:   colourValuesOutput = 1 x 3 1D array of colour values for the
%           specified input colour
%
% Author:   Ibrahim Anees

% Setting the default index to 0
index = 0;

% For loop to cycle through the colourNames array
for i = 1:length(colourNames)
    
    % Comparing strings while ignoring case
    if strcmpi(colour, colourNames(i)) == 1
        index = i; % Assigning row value to index if a match is found
    end
    
end

% If statement used when defining the output array
if index == 0 % If the index is 0, zeros and red error message displayed
    colourValuesOutput = [0, 0, 0];
    fprintf(2, 'Colour not found\n');
    
    % Otherwise defining the output array with the row number as index, and
    % the column numbers as 1, 2 and 3 from the input array
else
    colourValuesOutput = colourValuesInput(index, [1, 2, 3]);
end

end
