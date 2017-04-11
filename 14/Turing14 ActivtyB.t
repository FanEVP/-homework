% Turing Lesson 14, Lesson 24 overall
% Questions 1-3 (A-C) in doc, Touque Assignment 6 #1-3
% This is #2 from the doc (B)
% Write a program to take a list of ten words and output the one which 
% is the longest.

var longest_word : string
var prev_length : int := 0
var word : string

for k : 1 .. 10
    put "Enter a word. " ..
    get word
    if length(word) >= prev_length then
	prev_length := length(word)
	longest_word := word
    end if
end for

put "The longest word entered was ", longest_word, "."
