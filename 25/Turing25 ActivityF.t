% Turing 25, 35 overall
% 1-6 in the doc. This is #6 (F)
% A number is a palindrome if it is the same in reverse.  Write a program to
% find all the numbers that are Palindrones below 10,000. You should write a 
% function isPalindrone that checks whether a specific number is a palindrome.  Hint: You can use intstr which converts an integer to a string.  Look it up on the help!

function isPalindrome(integer:int) : boolean
    var integer_stringed : string
    var isPalindrome : boolean := false
    var reversed : int
    var reversed_stringed : string := ""
    
    integer_stringed := intstr(integer)
    for decreasing k : length(integer_stringed) .. 1
	reversed_stringed += integer_stringed(k)
    end for
    reversed := strint(reversed_stringed)
    
    if reversed = integer then
	result true
    end if
    result false
end isPalindrome

%main
for k : 1 .. 10000
    if isPalindrome(k) then
	put k, " " ..
    end if
end for
