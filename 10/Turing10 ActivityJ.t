% Lesson 20
% 10 questions from the lesson
% This is #10 (J)
% The country A has 50M inhabitants, and its population grows 3% per year. 
% The country B, 70M and grows 2% per year. 
% Determine in how many years the population of country A will surpass 
% country B.

const A_AFTERGROWTH := 1.03
const B_AFTERGROWTH := 1.02
var a_pop : real := 50000000
var b_pop : real := 70000000
var years : int := 0

loop
    a_pop *= A_AFTERGROWTH
    b_pop *= B_AFTERGROWTH
    years += 1
    exit when a_pop > b_pop
end loop
put "Country A will have a larger population than Country B after ", years, " years."
