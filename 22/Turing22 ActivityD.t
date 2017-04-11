% Turing 22, 32 overall
% 1-4 in the doc. This is #4 (D)
% Write a function that takes a character and if it is a vowel returns "*" and
% if it is anything else just returns the original character. Use your function
% to change all the vowels in a word entered by the user to *.

function to_caps (letter : char) : char
    var letter_new : char
    if index("AaEeIiOoUu", letter) not= 0 then
	letter_new := "*"
    else
	letter_new := letter
    end if
    result letter_new
end to_caps

%main
var letter1 : char
var word : string
var word_new : string := ""

put "Enter a word. " ..
get word

for k : 1 .. length(word)
    letter1 := word(k)
    word_new += to_caps(letter1)
end for

put word_new
