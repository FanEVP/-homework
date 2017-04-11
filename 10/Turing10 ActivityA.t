% Lesson 20
% 10 questions from the lesson
% This is #1 (A)
% Prompt the user to enter two integers x, and n.
% Use a loop to calculate 1 + x + x^2 + ... + x^n

var x : int
var n : int
var sum : int := 0

put "Please enter an integer (x). " ..
get x
put "Please enter another integer (n). " ..
get n
for i : 0 .. n
    sum += x**i
end for

put "The result of 1 + x**1 + x**2 + ... + x**n is ", sum, "."
