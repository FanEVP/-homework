% Lesson 20
% 10 questions from the lesson
% This is #4.b (Db)
% Try it again but this time display only the sum of 
% those first 8 cubed numbers. 
% Ex. Compute 13 + 23 + 33 + … + 83

var cube : int
var sum : int := 0
for i : 1..8
    cube = (i**3) % figure out why = is an error
    sum += cube
end for
put sum
