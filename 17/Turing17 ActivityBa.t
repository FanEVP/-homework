% Turing 17, 27th lesson overall
% Touque Assignment 6 #12-19, stuff + variations in the doc
% This is #2 in the doc. (Ba)
% Write a program that asks the user for a word. Then ask the user for a letter
% (or letter(s)) that should be removed from the word.
% Variation a : allow them to remove the same letter(s) from multiple words

var letter : char
var word : string
var word_new : string := ""

put "What letter would you like to remove from your words? " ..
get letter

loop
    put "Enter a word. Enter arrivederci when you are done. " ..
    get word
exit when word = "arrivederci"
    for k : 1 .. length(word) 
	if index(letter, word(k)) = 0 then
	    word_new += word(k)
	end if
    end for
    put word_new
    word_new := ""
end loop

put "Thanks for playing bae"
