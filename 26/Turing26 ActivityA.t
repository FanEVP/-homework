% Turing 26, 36 overall. 
% #1-7 in the doc. This is #1 (A)
% Write a procedure which takes three angles as input and outputs to the screen
% whether the triangle with these three angles is scalene, isosceles or 
% equilateral. You procedure should include error checking to confirm the three
% angles sum to 180 degrees. Test your procedure with both user and programmer
% input.

procedure triangle_type(angle1 : real, angle2 : real, angle3 : real)
    if angle1 + angle2 + angle3 = 180 then
	if angle1 = angle2 and angle2 = angle3 and angle3 = angle1 then
	    put "That is an equilateral triangle."
	elsif angle1 = angle2 or angle2 = angle3 or angle3 = angle1 then
	    put "That is an isosceles triangle."
	else
	    put "That is a scalene triangle."
	end if
    else
	put "The sum of all interior angles of a triangle is 180 degrees you nut."
    end if
end triangle_type

%main
var angle1 : real
var angle2 : real
var angle3 : real

put "Enter the angle measure of the triangle. " ..
get angle1, angle2, angle3

triangle_type(angle1, angle2, angle3)
