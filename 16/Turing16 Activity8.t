% Turing Lesson 16, Lesson 26 overall
% Touque Assignment 6 #7-11
% This is #9.
% Gather a word from the user and display it with every consonant 
% exchanged with its capital. For example: "colour" becomes "CoLouR."

var letter : char
var number : int
var word : string 
var word_new : string := ""

put "Enter a word. " ..
get word

for k : 1 .. length(word)
    if word(k) = "a" or word(k) = "e" or word(k) = "i" or word(k) = "o" or word(k) = "u" then
	word_new += word(k)
    elsif word(k) = "A" or word(k) = "E" or word(k) = "I" or word(k) = "O" or word(k) = "U" then
	word_new += word(k)
    elsif word(k) >= "a" and word(k) <= "z" then
	number := ord(word(k)) - ord("a") + ord("A")
	letter := chr(number)
	word_new += letter
    else
	word_new += word(k)
    end if
end for

put word_new
