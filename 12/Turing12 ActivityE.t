% Lesson 12? of Turing/Lesson 22 total
% 7 questions. This is #5 (E)
% Prompt the user to enter the three angles of a triangle. 
% For error checking confirm that all three numbers are positive numbers 
% between 0 and 180 and they sum to 180. 
% Then classify the triangle as scalene, isosceles or equilateral.

var ang1 : real
var ang2 : real
var ang3 : real

loop
    loop
	put "Enter the measurement, in degrees, of the first angle. " ..
	get ang1
	if ang1 <= 0 then
	    put "Try again nerd. "
	end if
	exit when ang1 > 0
    end loop
    loop
	put "Enter the measurement, in degrees, of the second angle. " ..
	get ang2
	if ang2 <= 0 then
	    put "Try again nerd. "
	end if
	exit when ang2 > 0
    end loop
    loop
	put "Enter the measurement, in degrees, of the last angle. " ..
	get ang3
	if ang3 <= 0 then
	    put "Try again nerd. "
	end if
	exit when ang3 > 0
    end loop
    put "If your angles to not add to 180 degrees, you will be prompted to reenter the values. "
    exit when ang1 + ang2 + ang3 = 180
end loop

if ang1 = 60 and ang2 = 60 and ang3 = 60 then
    put "That is an equilateral triangle. "
elsif ang1 = ang2 or ang2 = ang3 or ang3 = ang1 then
    put "That is an isosceles triangle. "
elsif ang1 not= ang2 and ang2 not= ang3 and ang3 not= ang1 then
    put "That is a scalene triangle. "
end if
