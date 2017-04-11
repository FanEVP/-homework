% Turing Lesson 14, Lesson 24 overall
% Questions 1-3 (A-C) in doc, Touque Assignment 6 #1-3
% This is #3 from the doc (C)
% Write a program which asks the user for a word and counts how many 
% times a vowel occurs in the word.

var vowels : int := 0
var word : string

put "Enter a word. " ..
get word

for k : 1 .. length(word)
    if word(k) = "a" or word(k) = "A" then
	vowels += 1
    elsif word(k) = "e" or word(k) = "E" then
	vowels += 1
    elsif word(k) = "i" or word(k) = "I" then
	vowels += 1
    elsif word(k) = "o" or word(k) = "O" then
	vowels += 1
    elsif word(k) = "u" or word(k) = "U" then
	vowels += 1
    end if
end for

put "The number of vowels in ", word, ", not including y's, is ", vowels, "."
