% Turing Lesson 18, Lesson 28 total. #1-4 in the doc
% This is #1
% Write a program which asks the user five times to enter a word with a random
% number of letters. 
% Variation b: As in part b, just make them enter the word over and over until
% they get one of the correct length.

var lengthword : int
var word : string

for k : 1 .. 5
    randint(lengthword, 1, 10)
    loop 
	put "Enter a word with ", lengthword, " letters. " ..
	get word
    exit when length(word) = lengthword
	put "Try counting that out on your fingers again."
    end loop
end for
