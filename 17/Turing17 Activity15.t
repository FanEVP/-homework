% Turing 17, 27th lesson overall
% Touque Assignment 6 #12-19, stuff + variations in the doc
% This is Touque #15
% Gather a word from the user and display it with each letter separated
% by a blank space. For example: "colour" becomes "c·o·l·o·u·r."

var word : string

put "Enter a word. " ..
get word

for k : 1 .. length(word)
    put word(k) ..
    put " " ..
end for
