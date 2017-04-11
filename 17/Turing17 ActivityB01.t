% Turing 17, 27th lesson overall
% Touque Assignment 6 #12-19, stuff + variations in the doc
% This is #2 in the doc w/ no variations. (B01)
% Write a program that asks the user for a word. Then ask the user for a letter
% (or letter(s)) that should be removed from the word.
% This is the second version, also variation b.

var letter : string
var word : string
var word_new : string := ""

put "Enter a word. " ..
get word

loop
    put "What letter would you like to remove? Enter no when you are done. " ..
    get letter
exit when letter = "no"
    for k : 1 .. length(word)
	if index(letter, word(k)) = 0 then
	    word_new += word(k)
	end if
    end for
    put word_new
    word := word_new
    word_new := ""
end loop

put "Thanks for playing :)))"
