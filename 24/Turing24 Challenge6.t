% Turing 24, 34 overall
% #1-3 and challenge #6 in the doc. This is challenge #6

% Write three functions:
% a) replace every letter a in a word with aa
% b) replace every letter b with a c
% c) insert a letter c at random location within the word
% Write a main program which asks the user for a string of a`s b`s and c`s.
% Your program should make five function calls to your three functions each
% time selecting which function it will call at random and see what string
% results. Make it even more random by selecting the number of function calls 
% it makes at random!

function a_to_aa(word : string) : string
    var word_new : string := ""
    
    for k : 1 .. length(word)
	if word(k) not= "a" then
	    word_new += word(k)
	else
	    word_new += "aa"
	end if
    end for
    result word_new
end a_to_aa

function b_to_c(word : string) : string
    var word_new : string := ""
    
    for k : 1 .. length(word)
	if word(k) not= "b" then
	    word_new += word(k)
	else
	    word_new += "c"
	end if
    end for
    result word_new
end b_to_c

function random_c(word : string) : string
    var char_random : int
    var letter_number : int
    var word_new : string := ""
    
    randint(char_random, 1, length(word)+1)
    for k : 1 .. length(word) + 1
	if k not= char_random and k < char_random then
	    letter_number := k
	    word_new += word(letter_number)
	elsif k = char_random then
	    letter_number := k
	    word_new += "c"
	elsif k not= char_random and k > char_random then
	    letter_number := k - 1
	    word_new += word(letter_number)
	end if
    end for
    result word_new
end random_c

%main
var function_selection : int
var stringabc : string

put "Enter a string of a's, b's, and c's. " ..
get stringabc

for k : 1 .. 5
    randint (function_selection, 1, 3)
    case function_selection of
	label 1 : put a_to_aa(stringabc)
	label 2 : put b_to_c(stringabc)
	label 3 : put random_c(stringabc)
    end case
end for
