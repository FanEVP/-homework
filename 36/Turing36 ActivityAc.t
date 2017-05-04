%Turing36, 46 overall. This is 1c(Ac)
% Create an array of ten real numbers. Prompt the user for the daily high 
% temperature for the last ten days and store each number in one element of the
% array.
% c) Look through the array for the highest (lowest) temperature. Again, search
% the array, don't do this as the user enters the data.

var highest : real := 0
var temperatures : array 1 .. 10 of real

put "Enter the high temperature for day 1."
get temperatures(1)
highest := temperatures(1)

for k : 2 .. 10
    put "Enter the high temperature for day ", k, "."
    get temperatures(k)
    if temperatures(k) > highest then
	highest := temperatures(k)
    end if
end for

put "The highest temperature is ", highest, "."
