% Turing 17, 27th lesson overall
% Touque Assignment 6 #12-19, stuff + variations in the doc
% This is Touque #1 in the doc w/ no variations. (Af)
% Have the user enter words until they enter a sentinel value 
% (of your choosing). Find the word that is first in the list of words 
% they entered alphabetically.
% Variation f: average length of the words entered

var avg : real := 0
var word : string
var word_total : int := 0

loop
    put "Enter a word. Enter done when you're done... " ..
    get word
exit when word = "done"
    avg += length(word)
    word_total += 1
end loop

avg /= word_total
put "The average word length is ", avg:0:0
