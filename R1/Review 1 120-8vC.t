%Turing Review Day 1
%Textbook pg 99 #6, 8, 14, pg 120 #1, 4, 8, 11a, 12, 14, 15
%This is 120-8vC
% program that outputs a backwards count by 5s from 100
% to a number between 100 and 50

var number : int := 100
var minimum : int

put "What number would you like to stop at (between 50 and 100)? " ..
get minimum  

loop
    put number:4 ..
    number -= 5
    exit when number < minimum
    put  ", " ..
end loop
