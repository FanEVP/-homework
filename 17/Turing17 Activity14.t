% Turing 17, 27th lesson overall
% Touque Assignment 6 #12-19, stuff + variations in the doc
% This is Touque #14
% Gather a word from the user and display it with an upshifted second half.
% For example: "colour" becomes "colOUR" and "color" becomes "coLOR."

var half1 : int
var half2 : int
var letter : char
var number : int
var word : string
var word_new : string := ""

put "Enter a word. " ..
get word

half1 := length(word) div 2
half2 := length(word) - half1

for k : 1 .. half1
    if word(k) >= "a" and word(k) <= "z" then
	letter := word(k)
	word_new += letter
    elsif word(k) >= "A" and word(k) <= "Z" then
	number := ord(word(k)) - ord("A") + ord("a")
	letter := chr(number)
	word_new += letter
    end if
end for

if half1 not= half2 then
    for m : half2 .. length(word)
	if word(m) >= "a" and word(m) <= "z" then
	    number := ord(word(m)) - ord("a") + ord("A")
	    letter := chr(number)
	    word_new += letter
	elsif word(m) >= "A" and word(m) <= "Z" then
	    letter := word(m)
	    word_new += letter
	end if
    end for
else
    for m : (half2 + 1) .. length(word)
	if word(m) >= "a" and word(m) <= "z" then
	    number := ord(word(m)) - ord("a") + ord("A")
	    letter := chr(number)
	    word_new += letter
	elsif word(m) >= "A" and word(m) <= "Z" then
	    letter := word(m)
	    word_new += letter
	end if
    end for
end if

put word_new
