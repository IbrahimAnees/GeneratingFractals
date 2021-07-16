function[colourMap] = CreateColourmap(startColour, endColour, n)
% Function that creates a custom colour map, with n shades of colour that
% range from a specified starting colour through to a specified ending
% colour. In the output, the first, second and third columns represent red,
% green and blue values respectively.
%
% Inputs:   startColour = 1 x 3 array of starting colour values
%           endColour = 1 x 3 array of ending colour values
%           n = number of rows to be generated for the colourMap array
%
% Outputs:  colourMap = n x 3 array where each row represents a colour
%
% Author:   Ibrahim Anees

% Creating three linearly spaced columns using the linspace command
% followed by an apostrophe to transpose the rows into columns
columnOne = linspace(startColour(1), endColour(1), n)';
columnTwo = linspace(startColour(2), endColour(2), n)';
columnThree = linspace(startColour(3), endColour(3), n)';

% Creating the colourMap array by concatenating the three columns
colourMap = [columnOne, columnTwo, columnThree];

end