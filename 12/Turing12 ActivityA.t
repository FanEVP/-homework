% Lesson 12? of Turing/Lesson 22 total
% 7 questions. This is #1 (A)
% Ask the user to enter a target number.  
% Output all the positive multiples of 4 that are less than 
% the users target number.  Don't forget to use proper programming style. 
% Hint: practise using mod and div.   

var inta : int

put "Please enter an integer. " ..
get inta

put "The positive multiples of 4 that are lower than your integer are as follows."
for k : 1 .. inta
    if k mod 4 = 0 and k < inta then
	put k
    end if
end for
