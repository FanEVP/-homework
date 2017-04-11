% Turing Lesson 14, Lesson 24 overall
% Questions 1-3 (A-C) in doc, Touque Assignment 6 #1-3
% This is #1 from the doc (A)
% Write a program to output the first and last letters of a series of words.
% Your program should use error checking to check that the word entered by
% the user has at least two characters. Choose an appropriate sentinel value
% for the user to finish the program.

var word : string

put "Enter the word done when you are...well...done."
loop
    put "Enter a word with 2+ letters. " ..
    get word
    exit when word = "done"
    if length(word) >= 2 then
	put "The first letter of the word is ", word(1)
	put "The last letter of the word is ", word(*)
    else
	put "pls"
    end if
end loop
