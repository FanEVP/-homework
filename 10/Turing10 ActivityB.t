% Lesson 20
% 10 questions from the lesson
% This is #2 (B)
% Prompt the user to enter two even numbers. 
% Output all the even numbers between the two numbers. 
    
var even1 : int
var even2 : int
put "Please enter an even integer. " ..
get even1
put "Please enter another even integer. " ..
get even2
for i: even1 .. even2 by 2
    put i, ", " ..
end for
