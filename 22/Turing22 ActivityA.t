% Turing 22, 32 overall
% 1-4 in the doc. This is #1 (A)
% Write a function which takes a length in centimeters and returns the length 
% in meters. Write a program to test your function.

function cm_m(cm : real) : real
    var m : real
    m := cm / 100
    result m
end cm_m

%main
var cm1 : real

put "Enter a length in centimetres. " ..
get cm1

put cm1, " cm is equal to ", cm_m(cm1):0:2, " m."
