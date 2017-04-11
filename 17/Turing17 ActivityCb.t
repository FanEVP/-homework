% Turing 17, 27th lesson overall
% Touque Assignment 6 #12-19, stuff + variations in the doc
% This is #3 in the doc. (Cb)
% Write a program which changes all the consonants as to % symbols.
% Variation b: Change all letters before 'd' to *

var word : string
var word_new : string := ""

put "Enter a word. " ..
get word

for k : 1 .. length(word)
    if (word(k) >= "a" and word(k) < "d") or (word(k) >= "A" and word(k) < "D") then
	word_new += "*"
    else
	word_new += word(k)
    end if 
end for

put word_new
