% Turing Lesson 13, Lesson 23 overall
% Questions 1-4
% This is #1
% Repeat the same program but do not specify ahead of time how many words 
% the user will enter. Have them enter words until an appropriate sentinel 
% value (you choose) is entered.

var avg_chars : real
var total_chars : int := 0
var total_words : int := 0
var word : string

put "Enter '57' when you are done entering words. "
loop
    put "Enter a word. " ..
    get word
    exit when word = "57"
    total_words += 1
    total_chars += length(word)
end loop

avg_chars := total_chars / total_words
put "The average number of letters in each word is ", avg_chars:0:0
