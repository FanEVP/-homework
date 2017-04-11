% Lesson 20
% 10 questions from the lesson
% This is #9 (I)
% User enters two positive integers, the first lower than the second. 
% The program computes the sum of adding all the numbers from the lower bound
% to the upper bound. Ex. User inputs 5 and 8. Sum = 5 + 6 + 7 + 8. 
% Make sure you do error checking to confirm the first number is lower 
% than the second.
var n1 : int
var n2 : int
var sum : int := 0

loop
    put "Please enter the lower integer. " ..
    get n1
    put "Please enter the higher integer. " ..
    get n2
    exit when n1 < n2
end loop
    
for i : n1 .. n2
    sum += i
end for
put "The sum is ", sum, "."
