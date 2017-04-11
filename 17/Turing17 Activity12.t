% Turing 17, 27th lesson overall
% Touque Assignment 6 #12-19, stuff + variations in the doc
% This is Touque #12
% Gather a word from the user and display it with alternating lower
% and upper case. For example: "colour" becomes "cOlOuR."

var letter : char
var number : int
var word : string
var word_new : string := ""

put "Enter a word. " ..
get word

for k : 1 .. length(word)
    if k mod 2 = 1 and word(k) >= "a" and word(k) <= "z" then
	letter := word(k)
	word_new += letter
    elsif k mod 2 = 1 and word(k) >= "A" and word(k) <= "Z" then
	number := ord(word(k)) - ord("A") + ord("a")
	letter := chr(number)
	word_new += letter
    elsif k mod 2 = 0 and word(k) >= "a" and word(k) <= "z" then
	number := ord(word(k)) - ord("a") + ord("A")
	letter := chr(number)
	word_new += letter
    else
	letter := word(k)
	word_new += letter
    end if
end for

put word_new
