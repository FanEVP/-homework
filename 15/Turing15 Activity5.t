% Turing Lesson 15, Lesson 25 overall. 
% #1-2 in doc, #4-7 from Assignment 6 on Touque
% This is #5 from Touque
% Gather a word from the user and display it with every vowel 
% exchanged with 9. For example: "colour" becomes "c9l99r."

var word : string
var word_new : string := ""

put "Enter a word. " ..
get word

for k : 1 .. length(word)
    if index("AaEeIiOoUu", word(k)) not= 0 then
	word_new += "9"
    else
	word_new += word(k)
    end if
end for

put word_new
