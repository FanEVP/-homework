% Turing 17, 27th lesson overall
% Touque Assignment 6 #12-19, stuff + variations in the doc
% This is Touque #1 in the doc w/ no variations. (Ad)
% Have the user enter words until they enter a sentinel value 
% (of your choosing). Find the word that is first in the list of words 
% they entered alphabetically.
% Variation d: longest word

var longest : string := ""
var word : string

loop
    put "Enter a word. Enter asdf when you're done. " ..
    get word
exit when word = "asdf"
    if length(word) > length(longest) then
	longest := word
    end if
end loop

put longest
