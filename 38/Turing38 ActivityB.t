%Turing38, 48 overall
% #2 (B) in the doc
% Write a program that accepts a user-specified number of words and outputs
% them in alphabetical order. You may assume all capitals or all lowercase to
% make the sorting easier. It should output (to screen or file) your sorted
% list. Input should be done via a file.

%get the limit
var limit : int %the number of words to be entered

put "How many words will you enter? " ..
get limit

%declare everything else
var list : array 1 .. limit of string
var list_sorted : array 1 .. limit of string
var last : string
var current_first : string
var usedalready : int

%collect all the words
for k : 1 .. limit
    put "Enter a word."
    get list (k)
end for

%find alphabetically last word
last := list (1)

for m : 2 .. limit
    if list (m) > last then
	last := list (m)
    end if
end for

%put things in order
for n : 1 .. limit
    current_first := list (1)
    for p : 1 .. limit
	if list (p) <= current_first then
	    current_first := list (p)
	    usedalready := p
	end if
    end for
    list_sorted(n) := current_first
    list(usedalready) := "zz" + last
end for

%output
put "Alphabetically sorted: "
for q : 1 .. limit
    put list_sorted(q)
end for
