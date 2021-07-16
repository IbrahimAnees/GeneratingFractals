function[rgbCellArray] = GenerateJuliaSets(complexValues, n, colourMap)
% Function that takes a sequence of complex values and generates the
% corresponding sequence of Julia set images. This function calls upon the
% following three functions: CreateComplexGrid, JuliaSetPoints, ColourJulia
%
% Inputs:   complexValues = 1D array of complex values
%           n = value specifying the grid size (n x n)
%           colourMap = n x 3 array where each row represents a colour
%
% Outputs:  rgbCellArray = cell array where each element contains an RGB
%           image of a Julia set (stored as a 3D array)
%
% Author:   Ibrahim Anees

% Storing the value of the number of rows in the colourMap array
[rows, ~] = size(colourMap);

% Assigning the value of the cutoff to the number of rows in colourMap
cutoff = rows;

% Using a for loop to run through the elements of the complexValues array
for i = 1:length(complexValues)
    
    % Calling the CreateComplexGrid function to create the complex array
    complexArray = CreateComplexGrid(n);
    % Calling the JuliaSetPoints function to create the nature array
    natureArray = JuliaSetPoints(complexArray, complexValues(i), cutoff);
    % Calling the ColorJulia function to create the 3D RGB array
    rgbArray = ColourJulia(natureArray, colourMap);
    % Creating a cell array to store the 3D RGB array that was created
    rgbCellArray{i} = rgbArray;
    
end

end
