% Turing Lesson 21, Lesson 31 overall
% #1-3 in the doc. This is #1 (A)
% Write a function that subtracts five from a real number. It takes a real as
% its parameter and returns a real value. Next, write a program that uses 
% this function which prompts the user for a number and outputs the new value
% that is returned by the function. Make sure the output is done in the main 
% program, not the function.

function minus_five(num : real) : real
    var num_new : real
    num_new := num - 5
    result num_new
end minus_five

%main program

var num1 : real
put "Enter a real number. " ..
get num1
put "The new number is ", minus_five(num1), "."
