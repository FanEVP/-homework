% Turing 24, 34 overall
% #1-3 and challenge #6 in the doc. This is #2b (Bb)

% I have written the following procedure which outputs lines of stars. 
% The parameter specifies how many lines of stars should be output.
procedure stars(line_number : int)
    for i : 1 .. line_number
	put "*****"
    end for
end stars

% Write a main program which asks the user how many lines of stars they want 
% and then uses the procedure to draw that many lines.
var line_number1 : int

put "How many lines of stars do you want? " ..
get line_number1

stars(line_number1)
