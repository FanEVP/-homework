% Turing Lesson 13, Lesson 23 overall
% Questions 1-4
% This is #1
% Prompt the user for ten words. 
% Return the average length of the words entered by the user.

const HALF_OF_TOTAL := 5
const TOTAL_WORDS := 10
var avg_chars : real
var total_chars : int := 0
var word : string

for k : 1 .. 10
    put "Enter a word. " ..
    get word
    total_chars += length(word)
end for

if total_chars mod TOTAL_WORDS >= HALF_OF_TOTAL then
    avg_chars := (total_chars div TOTAL_WORDS) + 1
    put "The average length of the words is ", avg_chars, " letters."
else
    avg_chars := total_chars div TOTAL_WORDS
    put "The average length of the words is ", avg_chars, " letters."
end if
