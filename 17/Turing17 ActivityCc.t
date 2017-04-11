% Turing 17, 27th lesson overall
% Touque Assignment 6 #12-19, stuff + variations in the doc
% This is #3 in the doc. (Cc)
% Write a program which changes all the consonants as to % symbols.
% Variation c: All characters to the following (or previous) character

var letter : char
var number : int
var word : string
var word_new : string := ""

put "Enter a word. " ..
get word

for k : 1 .. length(word)
    number := ord(word(k)) - 1
    letter := chr(number)
    word_new += letter
end for

put word_new
