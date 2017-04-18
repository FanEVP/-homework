% Turing 25, 35 overall
% 1-6 in the doc. This is #5 (E)
% A number is armstrong if the sum of cubes of individual digits of a number 
% is equal to the number itself. For example 371 is an armstrong number as
%  3^3 + 7^3 + 1^3 = 371.
% Write a program to find all the Armstrong numbers below 10,000.
% You should write a function isArmstrong that checks whether a specific number
% is an Armstrong number.

function isArmstrong(integer:int):boolean
    var integer_stringed : string
    var isArmstrong : boolean := false
    var number : int
    var number_stringed : string
    var num_cubed : int
    var sum : int := 0
    
    integer_stringed := intstr(integer)
    for k : 1 .. length(integer_stringed)
	number_stringed := integer_stringed(k)
	number := strint (number_stringed)
	num_cubed := number**3
	sum += num_cubed
    end for
    if sum = integer then
	result true
    end if
    result false
end isArmstrong

%main
var integer : int

put "Enter an integer. " ..
get integer

if isArmstrong(integer) then
    put "That number is an Armstrong number"
else
    put "That number is not an Armstrong number"
end if
