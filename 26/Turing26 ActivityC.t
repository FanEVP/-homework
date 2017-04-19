% Turing 26, 36 overall. 
% #1-7 in the doc. This is #3 (C)
% Write a procedure which takes a width and height as parameters and produces
% the letter 'T' made out of stars with that height and width. Require the
% width (height?) to be an odd number. Test your procedure with user input.
% Ex. Make_T(7, 5) should produce:
% *******
%    *
%    *
%    *
%    *

procedure T(height:int, width:int)
    put repeat("*", height)
    for k : 1 .. width - 1
	put repeat(" ", height div 2) ..
	put "*"
    end for
end T

%main
var height : int
var width : int

loop
    put "Enter a height. " ..
    get height
    put "Enter a width. " ..
    get width
    exit when height mod 2 = 1
end loop
T(height, width)

