%Turing36, 46 overall. This is 1b(Ab)
% Create an array of ten real numbers. Prompt the user for the daily high 
% temperature for the last ten days and store each number in one element of the
% array.
% b) Calculate (and output) the average temperature. Make sure you do this from
% the data in the array, not as the user enters the data.

var average : real := 0
var temperatures : array 1 .. 10 of real

for k : 1 .. 10
    put "Enter the high temperature for day ", k, "."
    get temperatures(k)
    average += temperatures(k)
end for

average /= 10

put "The average temperature was ", average
