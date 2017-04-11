% Turing 17, 27th lesson overall
% Touque Assignment 6 #12-19, stuff + variations in the doc
% This is Touque #1 in the doc w/ no variations. (Ac)
% Have the user enter words until they enter a sentinel value 
% (of your choosing). Find the word that is first in the list of words 
% they entered alphabetically.
% Variation c: three letter word alphabetically last

var last3 : string := ""
var word : string

loop
    put "Enter a word. Enter Can I leave pls when you want to leave... " ..
    get word:*
    if word > last3 and length(word) = 3 then
	last3 := word
    end if
exit when word = "Can I leave pls"
end loop

if last3 not= "" then
    put last3
else
    put "You didn't enter any three letter words :("
end if
