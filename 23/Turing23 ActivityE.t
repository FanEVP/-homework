% Turing 23, 33 overall
% 1-5 in the doc. This is #5 (E)
% Write a function to "glue" two strings together. Write another function which
% reverses a string. Now use those two functions to create a machine that glues
% together first two strings, reverses the result, and then glues on a third
% string.

function glued (word_a : string, word_b : string) : string
    var words_glued : string := ""
    
    words_glued := word_a + word_b
    result words_glued
end glued

function word_reversed (word_c : string) : string
    var word_reversed : string := ""
    
    for decreasing k : length(word_c) .. 1
	word_reversed += word_c(k)
    end for
    result word_reversed
end word_reversed

%main

%word_a1 is the first word entered, one of the ones that's glued in the beginning
var word_a1 : string
%word_a2 is word_c1 reversed (word_c1 is the combination of word_a1 and word_b1)
var word_a2 : string
%word_b1 is the second word entered, one of the ones that's glued in the beginning
var word_b1 : string
%word_b2 is the last word entered, to be glued to word_a2
var word_b2 : string
%word_c1 is the word_a1 and word_b1 glued together
var word_c1 : string
%word_final is the. uh. final word.
var word_final : string

put "Enter a word. " ..
get word_a1
put "Enter a word. " ..
get word_b1

word_c1 := glued(word_a1, word_b1)
word_a2 := word_reversed(word_c1)

put "Enter a word. " ..
get word_b2

word_final := glued(word_a2, word_b2)

put word_final

