function[colours, values] = ReadColourValues(fileName)
% Function that reads a list of colour names and their values from a
% specified text file, returning the colour names in a cell array and the
% colour values in a 2D array. If the file cannot be opened, an error
% message will be displayed.
%
% Input:    fileName = a string containing the filename to be used
%
% Outputs:  colours = a cell array of colour names, where each element is
%           stored as a string
%           values = a 2D array of colour values where each row contains
%           three corresponding colour values read in from the file
%
% Author:   Ibrahim Anees

colourFile = num2str(fileName); % Storing the fileName input as a string

fid = fopen(colourFile,'r'); % Opening the file with reading permission

values = []; % Creating the values array

% If the file cannot be opened, display an error in red
if fid == -1
    fprintf(2,['Error opening file ', num2str(fileName), '\n']);
    
else % Otherwise, get the first line from the file
    line = fgetl(fid);
    row = 1; % Defining the start of the row counter
    
    % Looping through the file until we run out of lines
    while (ischar(line))
        
        spaces = strfind(line, ' '); % Searching for spaces in the line
        
        lineColour = line(1:spaces(1)-1); % Storing the colour
        colours(row,1) = {lineColour}; % Add this colour to cell array
        row = row + 1; % Increasing row count
        
        lineValues = line(spaces(1)+1:end); % Storing the colour values
        % Values are first converted to numbers then added to 2D array
        values = [values; str2num(lineValues)];
        
        line = fgetl(fid); % Getting the next line
        
    end
end

status = fclose(fid); % Closing the file once all lines are finished

end