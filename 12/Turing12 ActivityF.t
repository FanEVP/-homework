% Lesson 12? of Turing/Lesson 22 total
% 7 questions. This is #6 (F)
% Many communities now have "radar" signs that tell drivers what their speed is,
% in the hope that they will slow down.
% You will output a message for a "radar" sign. 
% The message will display information to a driver based on his/her speed 
% according to the following table:
% km/h over the limit Fine
% 1 to 20 $100
% 21 to 30 $270
% 31 or above $500

const LIMIT := 40
var speed : real
var speed_over : real

put "Please enter your speed, in km/h. " ..
get speed

speed_over := speed - LIMIT
if speed_over >= 1 and speed_over <= 20 then
    put "You will be fined $100."
elsif speed_over >= 21 and speed_over <= 30 then
    put "You will be fined $270."
elsif speed_over >= 31 then
    put "You will be fined $500."
else
    put "You will not be fined. Happy driving :)"
end if
