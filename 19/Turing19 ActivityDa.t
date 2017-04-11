% Turing 19, Lesson 29 overall (test review)
% 1-4 in the doc, this is #4
% Roll a pair of dice until you roll a seven. Count how many times you had
% to roll the dice before you got the seven.
% Variation a: Roll the dice until you get "snake eyes" (pair of ones) 

var counter : int := 0
var die1 : int
var die2 : int

loop
    randint(die1, 1, 6)
    randint(die2, 1, 6)
    put die1, ", ", die2
    counter += 1
exit when die1 = 1 and die2 = 1 
end loop

put "It took ", counter, " rolls to get snakeyes."
