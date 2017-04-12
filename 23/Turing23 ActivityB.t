% Turing 23, 33 overall
% 1-5 in the doc. This is #2 (B)
% Write a function that tests if an integer is a multiple of 7. Write a program
% to test your function. Do not use user input.

function is7multiple(number : int) : boolean
    if number mod 7 = 0 then
	result true
    end if
    result false
end is7multiple

%main
var number1 : int

if is7multiple(157) then
    put "That number is a multiple of 7. " 
else
    put "That number is not a multiple of 7. "
end if

