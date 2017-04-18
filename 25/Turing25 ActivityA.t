% Turing 25, 35 overall
% 1-6 in the doc. This is #1 (A)
% 1. Write a procedure to produce the following pattern:
% %%%%%&&&&&
% %%%%&&&&
% %%%&&&
% %%&&
% %&
% Your procedure should have one parameter which specifies how many lines
% in the pattern there should be. Test your procedure.

procedure pattern(lines:int)
    for decreasing k : lines .. 1
	put repeat ("%", k) ..
	put repeat ("&", k)
    end for
    put ""
end pattern

pattern(5)
