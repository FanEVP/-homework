% Turing Lesson 15, Lesson 25 overall. 
% #1-2 in doc, #4-7 from Assignment 6 on Touque
% This is #7 from Touque
% Gather a word from the user and display it with every vowel exchanged
% with its capital. For example: "colour" becomes "cOlOUr."

var word : string
var new_word : string := ""

put "Enter a word. " ..
get word

for k : 1 .. length(word)
    if index("aeiou", word(k)) = 0 then
	new_word += word(k)
    else
	new_word += Str.Upper(word(k))
    end if
end for

put new_word
