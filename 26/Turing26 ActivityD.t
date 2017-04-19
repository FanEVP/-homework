% Turing 26, 36 overall. 
% #1-7 in the doc. This is #4 (D)
% Write a function which takes two numbers as input and returns true if the 
% first number is a factor of the second, false otherwise. Test your function
% with programmer input.

function factor_tf(number1:int, number2:int) : boolean
    var isFactor : boolean := false
    
    if number2 mod number1 = 0 then
	result true
    end if
    result false
end factor_tf

%main
put factor_tf(3, 57)
