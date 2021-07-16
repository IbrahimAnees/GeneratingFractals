function[iterations] = IterateComplexQuadratic(z, c, cutoff)
% Function that repeatedly applies the complex quadratic f = z^2 + c for
% a specified value of z and c, with z being replaced by f in the next
% iteration. This continues until |z| >=3 or until the maximum number of
% iterations is reached (specified by the cutoff).
%
% Inputs:   z = initial complex value to determine the nature of
%           c = complex value used to generate a particular Julia set
%           cutoff = determines maximum iterations to be performed
%
% Output:   iterations = number of iterations until |z| >= 3 or until
%           cutoff is reached
%
% Author:   Ibrahim Anees

% Set starting value of iterations to 0
iterations = 0;

% Keep iterating while |z| < 3
while abs(z) < 3
    f = z^2 + c; % In each iteration, compute f(z)
    
    % If cutoff is reached, set iterations to 0 and break the loop
    if iterations == cutoff
        iterations = 0;
        break
    end
    
    % Otherwise for the next iteration, assign the value of f to z and
    % increase iteration count by one
    z = f;
    iterations = iterations + 1;
end

end
