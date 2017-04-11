% Turing 22, 32 overall
% 1-4 in the doc. This is #3 (C)
% Write a function that models linear equations. The function should take three
% numbers as input, m, x and b. Then it should use the relationship
% y = mx + b to find the value y and return this result. The main program will
% ask the user for the slope (m), and y-intercept (b) of their line once.
% Then, repetitively, it will ask for a x-value and output the corresponding
% y-value until an appropriate sentinel value is reached.

function y_ifx (m : real, x : real, b : real) : real
    var y : real
    y := (m * x) + b
    result y
end y_ifx

%main
var b1 : real
var m1 : real
var x1 : real

put "What is the slope (m) of the line? " ..
get m1

put "What is the y-intercept (b) of the line? " ..
get b1

loop
    put "What is x? Enter 6.16 when you are done. " ..
    get x1
    exit when x1 = 6.16
    put "When x is ", x1, ", y is ", y_ifx (m1, x1, b1), "."
end loop
