% Turing 19, Lesson 29 overall (test review)
% 1-4 in the doc, this is #3
% Roll two dice 30 times. Count how many times you roll doubles.

var die1 : int
var die2 : int
var doubles : int := 0

for k : 1 .. 30
    randint(die1, 1, 6)
    randint(die2, 1, 6)
    if die1 = die2 then
	doubles += 1
    end if
end for

put "Doubles were rolled ", doubles, " times."
