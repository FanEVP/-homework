% Turing 24, 34 overall
% #1-3 and challenge #6 in the doc. This is #3 (C)
% Write a subprogram that prints a slant. This subprogram should have one 
% parameter where you specify the number of rows in the slant. For example, if
% the number of rows is 4 it should print the following:
% *
%   *
%     *
%       *
%Your program should use the subprogram to produce the following:
% *
%   *
%     *
%       *
%         *
%           *
%             *
% *
%   *

procedure slant(rows : int)
    for k : 1 .. rows
	for m : 1 .. k - 1
	    put " " ..
	end for
	put "*"
	put ""
    end for
end slant

slant(7)
slant(2)
