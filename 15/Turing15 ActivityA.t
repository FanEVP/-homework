% Turing Lesson 15, Lesson 25 overall. 
% #1-2 in doc, #4-7 from Assignment 6 on Touque
% This is #1 from the doc (A)
% Write a program that takes a word and removes all the letters "d" from it.

var word : string
var word_no_d : string := ""

put "Enter a word. " ..
get word 

for k : 1 .. length(word)
    if index("dD", word(k)) = 0 then
	word_no_d += word(k)
    end if
end for

put "The word you entered, without d's, is ", word_no_d, "."
