% Turing 23, 33 overall
% 1-5 in the doc. This is #3 (C)
% A word is a palindrome if it is the same in reverse. You should write a
% function that checks whether a specific word is a palindrome. Write a program
% to test your function. Hint: you could use two functions! The one you write
% which checks whether it is a palindrome and the one you wrote before to 
% reverse a string.

function word_reversed (word : string) : string
    var word_new : string := ""
    
    for decreasing k : length(word) .. 1
	word_new += word(k)
    end for
    result word_new
end word_reversed

function isPalindrome (word : string, word_new : string) : boolean
    if word = word_new then
	result true
    end if
    result false
end isPalindrome

%main
var word1 : string
var word_new1 : string 

put "Enter a word. " ..
get word1

word_new1 := word_reversed(word1)

if isPalindrome(word1, word_new1) then
    put "That word is a palindrome." 
else 
    put "That word is not a palindrome. " ..
end if
