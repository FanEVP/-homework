% Turing Lesson 18, Lesson 28 total. #1-4 in the doc
% This is #4
% Write a "guessing game" program. The computer generates a random number
% between 1 and 100. The user has to try and guess the number.
% After each guess the user makes you tell them whether the number is higher
% or lower than the guess.

var guess : int
var guesses_no : int := 0
var int0 : int

randint(int0, 1, 100)
loop
put "Enter your guess of a number between 1 and 100. " ..
get guess
if guess < int0 then
    put "The target number is higher. "
elsif guess > int0 then
    put "The target number is lower. " 
elsif guess = int0 then
    put "Oui oui, mon ami(e)."
end if
guesses_no += 1
exit when guess = int0
end loop

put "You took ", guesses_no, " guesses."
