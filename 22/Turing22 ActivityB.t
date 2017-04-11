% Turing 22, 32 overall
% 1-4 in the doc. This is #2 (B)
% Write a function which calculates the area of a triangle. It should have two
% parameters, the height and base of the triangle and return the area of the
% triangle. Write a program to test your function which does not get input from
% the user.

function area_tri (height : real, base : real) : real
    var area : real
    area := height * base / 2
    result area
end area_tri

%main
var base1 : real
var height1 : real

put "Enter the base of the triangle. " ..
get base1

put "Enter the height of the triangle. " ..
get height1

put "The area of the triangle is ", area_tri(height1, base1):0:2, " square units."
