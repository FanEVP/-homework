% Lesson 20
% 10 questions from the lesson
% This is #5 (E)
% Gather a set of 10 marks. Display how many marks are at least 70%.

var and_above : int := 0
var mark : real
for i: 1..10
    put "Please enter a mark. " ..
    get mark
    if mark >= 70 then
	and_above += 1
    end if
end for
put "You entered a total of ", and_above, " marks that were at least 70."
