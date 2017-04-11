% Turing 19, Lesson 29 overall (test review)
% 1-4 in the doc, this is #1
% Generate three random integers between 100 and 200. 
% Output the three integers from smallest to largest.

var great : int 
var greater : int 
var greatest : int 
var inta : int
var intb : int
var intc : int

randint(inta, 100, 200)
randint(intb, 100, 200)
randint(intc, 100, 200)

if inta > intb and inta > intc then
    greatest := inta
    if intb > intc then
	greater := intb
	great := intc
    elsif intc > intc then
	greater := intc
	great := intb
    end if
elsif intb > inta and intb > intc then
    greatest := intb
    if inta > intc then
	greater := inta
	great := intc
    elsif intc > inta then
	greater := intc
	great := inta
    end if
elsif intc > inta and intc > intb then
    greatest := intc
    if inta > intb then
	greater := inta
	great := intb
    elsif intb > inta then
	greater := intb 
	great := inta
    end if
end if

put great, ", ", greater, ", ", greatest
