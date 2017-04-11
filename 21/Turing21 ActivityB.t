% Turing Lesson 21, Lesson 31 overall
% #1-3 in the doc. This is #2 (B)
% Write a function that takes a positive integer as its input (parameter) 
% and returns the factorial of that number. Write a program that prompts the 
% user for a number and then outputs its factorial. It should do this 
% repetitively until the user enters a sentinel value (as chosen by the
% programmer). (Recall: the factorial of a number, written 7!, is defined as
% 7 * 6 * 5 * 4 * 3 * 2 * 1)

function factorial_of(num : int) : int
    var factorial : int := 1
    for decreasing k : num .. 1
	factorial *= k
    end for
    result factorial
end factorial_of

%main
var num1 : int

loop 
    put "Enter a number. Enter 0 when you want to die. " ..
    get num1
exit when num1 = 0
    put factorial_of(num1)
end loop

put "Thanks for playing :)"
