% Turing Lesson 14, Lesson 24 overall
% Questions 1-3 (A-C) in doc, Touque Assignment 6 #1-3
% This is #3 on Touque
% Gather a word from the user and display it with its first and last 
% letters exchanged. For example: "colour" becomes "rolouc."

var word : string

put "Enter a word. " ..
get word

put word(*) ..

for k : 2 .. length(word) - 1
    put word(k) ..
end for

put word(1)
