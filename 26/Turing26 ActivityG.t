% Turing 26, 36 overall.
% #1-7 in the doc. This is #7 (G) (mini-challenge)
% Write a procedure reduce fraction which takes as input the numerator and
% denominator of a fraction and outputs the reduced fraction to the screen.  
% Ex. reduce(2, 4) outputs:
% 1
% --
% 2

% The reduced numerator, on the next line two dashes, on the third line the
% reduced denominator

procedure simplified (numerator : int, denominator : int)
    for decreasing k : numerator * denominator .. 1
	if numerator mod k = 0 and denominator mod k = 0 then
	    put numerator div k
	    put "--"
	    put denominator div k
	exit
	end if
    end for
end simplified

simplified(57, 3)
