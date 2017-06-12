%Turing Review Day 1
%Textbook pg 99 #6, 8, 14, pg 120 #1, 4, 8, 11a, 12, 14, 15
%This is 120-1vB
% a program that contains an infinite loop, outputting a series of integers 
% starting at 5 and decreasing by 10s
var integer : int := 5

loop
    put integer:4, ", " ..
    integer -= 10
    %time delay used to make error checking manageable
    Time.Delay (500)
end loop
