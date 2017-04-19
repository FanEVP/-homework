% Turing 26, 36 overall.
% #1-7 in the doc. This is #5 (E)
% Write a function which takes a string and a character as input and removes
% all occurrences of that character from with the string.
% Test your function. Ex. remove("spaghetti", "t") returns "spaghei"

function remover (string0 : string, character : char) : string
    var string_new : string := ""
    for k : 1 .. length (string0)
	if index (string0 (k), character) = 0 then
	    string_new += string0 (k)
	end if
    end for
    result string_new
end remover

put remover ("Vilnius", "i")
