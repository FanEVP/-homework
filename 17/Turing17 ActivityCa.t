% Turing 17, 27th lesson overall
% Touque Assignment 6 #12-19, stuff + variations in the doc
% This is #3 in the doc. (Ca)
% Write a program which changes all the consonants as to % symbols.
% Variation a: change all 'r' to "R"

var word : string
var word_new : string := ""

put "Enter a word. " ..
get word

for k : 1 .. length(word)
    if index("r", word(k)) = 0 then
	word_new += word(k)
    else
	word_new += "R"
    end if
end for

put word_new
