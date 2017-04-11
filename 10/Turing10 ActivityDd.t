% Lesson 20
% 10 questions from the lesson
% This is #4.d (Dd)
% Try it again but allow the user to specify both the highest and 
% lowest number whose cube you should display. (A program like in part a.)

var highest : int
var lowest : int
put "Please enter the lowest integer of which you want to cube. " ..
get lowest
put "Please enter the highest integer of which you want the cube. " ..
get highest

for i: lowest..highest
    put i**3, ", " ..
end for
