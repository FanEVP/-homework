% Turing Lesson 15, Lesson 25 overall. 
% #1-2 in doc, #4-7 from Assignment 6 on Touque
% This is #2 from the doc (B)
% Write a program that takes a word and removes all the vowels from it.

var word : string
var word_vowelless : string := ""

put "Enter a word. " ..
get word

for k : 1 .. length(word)
    if index("AaEeIiOoUu", word(k)) = 0 then
	word_vowelless += word(k)
    end if
end for

put "The word you entered, without vowels, is ", word_vowelless, "."
