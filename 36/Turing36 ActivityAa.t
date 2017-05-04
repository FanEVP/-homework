%Turing36, 46 overall. This is 1a(Aa)
% Create an array of ten real numbers. Prompt the user for the daily high 
% temperature for the last ten days and store each number in one element of the
% array.
% a) Output the temperatures in reverse.

var temperatures : array 1 .. 10 of real

for k : 1 .. 10
    put "Enter the high temperature for day ", k, "."
    get temperatures(k)
end for

put "The temperatures in reverse are " ..
for decreasing k : 10 .. 1
    put temperatures(k), " " ..
end for
