% Turing Lesson 21, Lesson 31 overall
% #1-3 in the doc. This is #3 (C)
% Write a function which reverses the order of the letters in a word. Write
% a main program which calls your function. Call the function with word 
% inputted by the programmer and by the user.

function reversed_word(word : string) : string
    var word_new : string := ""
    for decreasing k : length(word) .. 1
       word_new += word(k) 
    end for
    result word_new
end reversed_word

%main
var word1 : string

put "Enter a word. " ..
get word1

put reversed_word(word1)
