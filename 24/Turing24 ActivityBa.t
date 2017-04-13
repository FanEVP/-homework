% Turing 24, 34 overall
% #1-3 and challenge #6 in the doc. This is #2a (Ba)

% I have written the following procedure which outputs lines of stars. 
% The parameter specifies how many lines of stars should be output.
procedure stars(line_number : int)
    for i : 1 .. line_number
	put "*****"
    end for
end stars

% Write a main program which uses this procedure to print 7 lines of stars. 
% (Hint, after you copy in the procedure your main program only has one line!)
stars(7)
