function[complexArray] = CreateComplexGrid(n)
% Function that creates a 2D array of size n x n, and stores complex values
% drawn from a square grid of equally spaced points bounded by the lines
% x=-2, x=2 and y=2i, y=-2i.
%
% Input:    n = positive integer specifying number of rows and columns
%
% Output:   complexArray = a 2D array of size n x n of equally spaced
%           complex values in the bounded complex plane
%
% Author:   Ibrahim Anees

% Creating a 1D array (x) for n real values between -2 and 2
x = linspace(-2,2,n);

% Creating a 1D array (y) for n imaginary values between +2i and -2i
y = linspace(+2i,-2i,n);

% Creating two 2D arrays (X, Y) that contain x and y values respectively
[X, Y] = meshgrid(x,y);

% Generating the 2D array 'complexGrid' from arrays X and Y
complexArray = X + Y;

end
