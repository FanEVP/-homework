% Lesson 12? of Turing/Lesson 22 total
% 7 questions. This is #4 (D)
% Write a program which prompts the user to enter an integer. 
% Then output the times table (up to ten times) for the number the user entered.
% The input of the integer should be robust and handle the case where the user
% does not enter an integer, giving them an error message and prompting them
% until they successfully enter an integer. 
% Consider using a const for the number 10 so you can modify it later if
% you wish.

const MAX := 10
var int0 : real

loop
    put "Enter an integer. " ..
    get int0
    if int0 mod 1 not= 0 then
	put "Try again nerd. "
    end if
    exit when int0 mod 1 = 0
end loop

for k: 1 .. MAX
    put int0, " times ", k, " is ", int0 * k
end for

