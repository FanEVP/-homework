% Turing Lesson 18, Lesson 28 total. #1-4 in the doc
% This is #1
% Write a program which asks the user five times to enter a word with a random
% number of letters. 

var lengthword : int
var word : string

for k : 1 .. 5
    randint(lengthword, 1, 10)
    put "Enter a word with ", lengthword, " letters. " ..
    get word
end for
