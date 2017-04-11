% Turing 17, 27th lesson overall
% Touque Assignment 6 #12-19, stuff + variations in the doc
% This is Touque #1 in the doc w/ no variations. (A0)
% Have the user enter words until they enter a sentinel value 
% (of your choosing). Find the word that is first in the list of words 
% they entered alphabetically.


var first : string
var word : string

put "Enter a word. Enter done when you're done... " ..
    get word
    first := word
loop
    put "Enter a word. Enter done when you're done... " ..
    get word
    
exit when word = "done"
    if word < first then
	first := word
    end if
end loop

put first
