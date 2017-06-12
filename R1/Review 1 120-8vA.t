%Turing Review Day 1
%Textbook pg 99 #6, 8, 14, pg 120 #1, 4, 8, 11a, 12, 14, 15
%This is 120-8vB
% program that outputs a backwards count by 5s from 100 to 50

var number : int := 100

loop
    put number:4 ..
    number -= 5
    exit when number < 5
    put  ", " ..
end loop
