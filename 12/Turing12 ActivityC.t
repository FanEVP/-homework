% Lesson 12? of Turing/Lesson 22 total
% 7 questions. This is #3 (C)
% Write a short program to convert between cm and inches.
% Prompt the user to enter a height and ask them whether it is in cm or inches.
% Then convert to the opposite.
% [Recall: one inch equals (approx.) 2.5  centimeters]
% Extend your program so once you have converted from cm to inches you now give
% your final answer in feet and inches or if you converted from inches 
% to centimetres(?) final answer is meters and cms
% Ex.  160 cm / 2.5 = 64 inches = 5 feet, 4 inches. 

const CMIN := 0.393701
const INCM := 2.5
var cm : real
var cm_final : real
var f_final : int
var in0 : real
var in_final : real
var m_final : int
var height : real 
var unit0 : string

put "What unit is your measurement in? Centimetres or inches? " ..
get unit0
put "How many ", unit0, " long? " ..
get height

if unit0 = "inches" then
    cm := height * INCM
    m_final := cm div 100
    cm_final := height - m_final % why do I always get an error if my last operation is to subtract a var
    put height, " inches is equal to ", cm, " centimetres, or ", m_final, " m ", cm_final:0:2, " cm."
elsif unit0 = "centimetres" then
    in0 := height * CMIN
    f_final := in0 div 12
    in_final := height - f_final
    put height, "centimetres is equal to ", in0, " inches, or ", f_final, " feet ", in_final:0:2, " in."
end if

