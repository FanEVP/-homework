% Lesson 20
% 10 questions from the lesson
% This is #6 (F)
% Ask the user for temperatures. 
% Keep doing so, until they enter a temperature above 30 degrees. 
% When they finally enter one above thirty, finish the program by saying 
% "Wow, that's hot".

var temp : int

loop
    put "What is the temperature? " ..
    get temp
    exit when temp > 30
end loop
if temp > 30 then
    put "Damn son that's hot"
end if

    
