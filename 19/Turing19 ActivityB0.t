% Turing 19, Lesson 29 overall (test review)
% 1-4 in the doc, this is #2
% Generate random numbers between 1 and 100 until you reach get one in the 90`s.
% Count how many numbers you got before you got one in the 90`s.

var before90 : int := 0
var number : int

loop
    randint(number, 1, 100)
    put number
exit when number >= 90 and number < 100
    before90 += 1
end loop

put before90, " numbers were generated before one in the 90s appeared."
