% Lesson 20
% 10 questions from the lesson
% This is #7 (G)
% Ask the user for two numbers. Output their average. 
% Keep doing this until both the numbers are zero.

var avg : real
var num1 : int
var num2 : int

loop
    put "Enter a number. " ..
    get num1
    put "Enter another number. " ..
    get num2
    exit when num1 = 0 and num2 = 0
    avg := (num1 + num2) / 2
    put "The average of ", num1, " and ", num2, " is ", avg, "."
end loop
