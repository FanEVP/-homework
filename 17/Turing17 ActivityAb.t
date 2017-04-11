% Turing 17, 27th lesson overall
% Touque Assignment 6 #12-19, stuff + variations in the doc
% This is Touque #1 in the doc w/ no variations. (Ab)
% Have the user enter words until they enter a sentinel value 
% (of your choosing). Find the word that is first in the list of words 
% they entered alphabetically.
% Variation b: seven letter word which is alphabetically first 

var first7 : string := "zzzzzzz"
var word : string

loop
    put "Enter a word. Enter exit when you want to exit... " ..
    get word
    if word < first7 and length(word) = 7 then
	first7 := word
    end if
exit when word = "exit"
end loop

if first7 not= "zzzzzzz" then
    put "The seven letter word that is first alphabetically which you entered is ", first7, "."
else
    put "You didn't enter any seven letter words :("
end if
