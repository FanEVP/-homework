% Turing 26, 36 overall. 
% #1-7 in the doc. This is #2 (B)
% Write a procedure which takes the maximum number as input and produces the 
% following pattern (for example if max number is 5)   1 22 333 4444 55555

procedure pattern(max : int)
    for k : 1 .. 5
	for m : 1 .. k
	    put k ..
	end for
	put " " ..
    end for
end pattern

pattern(5)
