% Turing Lesson 16, Lesson 26 overall
% Touque Assignment 6 #7-11
% This is #10
% Gather a word from the user and display it with exchanged case.
% For example: "Colour" becomes "cOLOUR."

var letter : char
var number : int
var number_new : int
var word : string
var word_new : string := ""

put "Enter a word :) " ..
get word

for k : 1 .. length(word)
    number := ord(word(k))
    if number >= 97 and number <= 122 then
	number_new := number - ord("a") + ord("A")
	letter := chr(number_new)
	word_new += letter
    elsif number >= 65 and number <= 90 then
	number_new := number - ord("A") + ord("a")
	letter := chr(number_new)
	word_new += letter
    end if
end for

put word_new
