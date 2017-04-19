% Turing 26, 36 overall.
% #1-7 in the doc. This is #6 (F)
% Write a function which takes a string as a parameter and returns the middle 
% character in the string. If there are an even number of characters it should
% return the first of the two middle characters.

function return_middle (string0 : string) : char
    var half_length : int 
    
    half_length := length(string0) div 2
    result string0(half_length)
end return_middle

put return_middle("Dublin")
