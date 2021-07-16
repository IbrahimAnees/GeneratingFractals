function[rgbArray] = ColourJulia(natureArray, colourMap)
% Function that creates a 3D array of uint8 values. This array can be shown
% as an RGB image of the Julia set. All points within the Julia set are
% coloured black, and if a grid point is not in the Julia set it will be
% coloured using the row from the colour map that corresponds to the value
% used to describe the nature of that point.
%
% Inputs:   natureArray = 2D array describing the nature of each point
%           colourMap = 2D array containing RGB values between 0 and 1
%
% Output:   rgbArray = 3D array with 3 layers of uint8 values, which can be
%           used to generate the Julia set image
%
% Author:   Ibrahim Anees

% Creating a new array that has the uint8 RGB values instead of the RGB
% percentages
uint8ColourMap = round(colourMap*255);

% Storing the values of the number of rows and columns in natureArray
[rows,columns] = size(natureArray);

% Creating the 3D output array with the same number of rows and columns as
% the nature array, and with 3 layers. Also assigning 'uint8' to the array
% which ensures the resulting 3D array can be interpreted correctly.
rgbArray = zeros(rows, columns, 3, 'uint8');

% Using a nested for loop to run through natureArray and populate rgbArray
% based on the uint8ColourMap array
for i = 1:rows % Cycling through each row
    for j = 1:columns % Cycling through each column
        
        % If the point is in the Julia set (i.e. value in the nature array
        % is 0), then leave the point at 0 (black), and continue to the
        % next element in the array
        if natureArray(i, j) == 0
            continue
        end
        
        % Otherwise, use the value in natureArray to determine the colour
        % of the point
        % Populating the red layer (1)
        rgbArray(i, j, 1) = uint8ColourMap(natureArray(i, j), 1);
        % Populating the green layer (2)
        rgbArray(i, j, 2) = uint8ColourMap(natureArray(i, j), 2);
        % Populating the blue layer (3)
        rgbArray(i, j, 3) = uint8ColourMap(natureArray(i, j), 3);
        
    end
end

end