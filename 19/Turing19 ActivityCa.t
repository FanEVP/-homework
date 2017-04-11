% Turing 19, Lesson 29 overall (test review)
% 1-4 in the doc, this is #3
% Roll two dice 30 times. Count how many times you roll doubles.
% Variation a: Count how many times the sum of the dice is odd

var die1 : int
var die2 : int
var odds : int := 0
var sum : int

for k : 1 .. 30
    randint(die1, 1, 6)
    randint(die2, 1, 6)
    sum := die1 + die2
    if sum mod 2 = 1 then
	odds += 1
    end if
end for

put "Odd sums were rolled ", odds, " times."
