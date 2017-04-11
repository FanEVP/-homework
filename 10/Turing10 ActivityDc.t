% Lesson 20
% 10 questions from the lesson
% This is #4.c (Dc)
% Write the program again but allow the user to specify the 
% largest number whose cube you should display. (A program like in part a.)

var largest : int
put "Please enter the largest integer of which you want the cube. " ..
get largest

for i: 1..largest
    put i**3, ", " ..
end for
