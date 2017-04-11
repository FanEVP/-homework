% Turing Lesson 18, Lesson 28 total. #1-4 in the doc
% This is #3.a)
% Write a program that "rolls a die" 20 times (outputting the roll each time)
% and: a) Outputs how many times it rolls each number (from 1 to 6). 
% HINTS: Use an accumulator(s) and a case statement

var roll : int
var r1 : int := 0
var r2 : int := 0
var r3 : int := 0
var r4 : int := 0
var r5 : int := 0
var r6 : int := 0

for k : 1 .. 20
    randint(roll, 1, 6)
    put roll, " " ..
    case roll of
	label 1 : r1 += 1
	label 2 : r2 += 1
	label 3 : r3 += 1
	label 4 : r4 += 1
	label 5 : r5 += 1
	label 6 : r6 += 1
    end case
end for

put ""
put "1 was rolled ", r1, " times."
put "2 was rolled ", r2, " times."
put "3 was rolled ", r3, " times."
put "4 was rolled ", r4, " times."
put "5 was rolled ", r5, " times."
put "6 was rolled ", r6, " times."
