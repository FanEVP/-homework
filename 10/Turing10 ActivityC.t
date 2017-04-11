% Lesson 20
% 10 questions from the lesson
% This is #3 (C)
% Write a program that takes a whole number as input from the user 
% and outputs all the factors of that number. 
% (Hint: to check whether a number is a factor use mod to check whether 
% the remainder equals zero. You need to check every number from 1 to 
%the user input to see if it is a factor.)

var number : int
put "Please enter a whole number. " ..
get number
for i : 1 .. number
    if number mod i = 0 then
	put i
    end if
end for
