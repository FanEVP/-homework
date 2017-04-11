% Turing Lesson 14, Lesson 24 overall
% Questions 1-3 (A-C) in doc, Touque Assignment 6 #1-3
% This is #1 on Touque
% Gather a word from the user and display its letters one per line.

var word : string

put "Enter a word. " ..
get word

for k : 1 .. length(word)
    put word(k)
end for
