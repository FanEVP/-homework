% Turing Lesson 15, Lesson 25 overall. 
% #1-2 in doc, #4-7 from Assignment 6 on Touque
% This is #4 from Touque
% Gather a word from the user and display it with its first half exchanged
% with its second half. For example: "colour" becomes "ourcol" and "color" become "lorco."

var half1 : int
var half1_ : string := ""
var half2 : int
var half2_ : string := ""
var word : string
var word_new : string := ""

% Get word 
put "Enter a word. " ..
get word

% Determine how many letters are in each half
if length(word) mod 2 = 0 then
   half1 := length(word) div 2 
else
    half1 := (length(word) div 2) + 1
end if
half2 := length(word) - half1

% Create the halves
for k : 1 .. half1
    half1_ += word(k)
end for
if length(word) mod 2 = 0 then
    for m : half2 + 1 .. length(word)
	half2_ += word(m)
    end for
else
    for m : half2 + 2 .. length(word)
	half2_ += word(m)
    end for
end if

% Create new word
word_new := half2_ + half1_

% Output
put word_new
