% Turing 23, 33 overall
% 1-5 in the doc. This is #1 (A)
% Write a function which tests whether a word starts with 'S' 
% (lower or uppercase).  Write a program to test your function.

function s_tf(letter : char) : boolean
    if index("Ss", letter) not=0 then
	result true
    end if
    result false
end s_tf

%main

var letter1 : char
var word : string

put "Enter a word. " ..
get word

letter1 := word(1)
if s_tf(letter1) then
    put "That word starts with an s. "
else
    put "That word does not start with an s."
end if


