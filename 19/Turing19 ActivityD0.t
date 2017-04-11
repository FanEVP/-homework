% Turing 19, Lesson 29 overall (test review)
% 1-4 in the doc, this is #4
% Roll a pair of dice until you roll a seven. Count how many times you had
% to roll the dice before you got the seven.

var die1 : int
var die2 : int
var sum : int
var counter : int := 0

loop
    randint(die1, 1, 6)
    randint(die2, 1, 6)
    sum := die1 + die2
    put die1, " + ", die2, " = ", sum
    counter += 1
exit when sum = 7
end loop

put "A sum of seven was achieved after rolling two dice ", counter, " times."
