%Turing37, 47 overall. #1 - 3
% This is #3 (C)
% Write a dice rolling program that (randomly) rolls a pair of dice 50 times. 
% Create an array where you store how many times a sum has been rolled. 
% (ie. The first entry in the array shows how many times the sum was 2, the 
% second element how many times the sum was 3, etc). After all 50 rolls ask 
% the user what roll they are interested in and tell them how many times that
% sum was rolled.

var die1 : array 1 .. 50 of int
var die2 : array 1 .. 50 of int
var result_requested : int
var sum : array 1 .. 50 of int
var sum_counter : array 2 .. 12 of int
var sum_requested : int

for k : 1 .. 50
    randint(die1(k), 1, 6)
    randint(die2(k), 1, 6)
    sum(k) := die1(k) + die2(k)
    put die1(k), " + ", die2(k), " = ", sum(k), ",   " ..
end for

for m : 2 .. 12
    for n : 1 .. 50
	sum_counter(m) := 0
	if sum(n) = m then
	    sum_counter(m) += 1
	end if
    end for
end for

put skip
put "What sum to count? " ..
get sum_requested

for p : 2 .. 12
    if sum_requested = p then
	result_requested := sum_counter(p)
    end if
end for

put "A sum of ", sum_requested, " was rolled ", result_requested, " times."
