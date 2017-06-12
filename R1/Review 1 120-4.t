%Turing Review Day 1
%Textbook pg 99 #6, 8, 14, pg 120 #1, 4, 8, 11a, 12, 14, 15
%This is 120-4
% ask how many marks will be entered
% enter the marks, find the average
var avg : real := 0
var quantity : int

put "How many marks will be entered? " ..
get quantity

var marks : array 1 .. quantity of int

for k : 1 .. quantity
    put "Enter a mark. " ..
    get marks(k)
    avg += marks(k)
end for

avg /= quantity

put "The average mark is ", avg:0:2, "."
