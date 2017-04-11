% Turing 17, 27th lesson overall
% Touque Assignment 6 #12-19, stuff + variations in the doc
% This is #3 in the doc. (C0)
% Write a program which changes all the consonants as to % symbols.

var word : string
var word_new : string := ""

put "Enter a word. " ..
get word

for k : 1 .. length(word)
    if index("AaEeIiOoUu", word(k)) not= 0 then
	word_new += word(k)
    else 
	word_new += "%"
    end if
end for

put word_new
