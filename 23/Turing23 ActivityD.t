% Turing 23, 33 overall
% 1-5 in the doc. This is #4 (D)
% Write a function that doubles a value. Write a program that asks the user for
% a number and then keeps doubling (and outputting) that number until a maximum
% (1000, 1000000 perhaps?) of your choice is reached.

function doubled(number : real) : real
    var number_new : real
    
    number_new := number * 2
    result number_new
end doubled

%main
var number1 : real
var number_new1 : real

put "Enter a number. " ..
get number1

loop
    number_new1 := doubled(number1)
    number1 := number_new1
    exit when number1 > 1000
    put number1
end loop
