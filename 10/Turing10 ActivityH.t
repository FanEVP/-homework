% Lesson 20
% 10 questions from the lesson
% This is #8 (H)
% Julia has $300 in her bank account earning 1.25% interest 
% while Max has only $280 but he earns 2% interest. 
% How many years before Max has more money in his account than Julia?

const J_AFTERINT := 1.0125
const M_AFTERINT := 1.02
var j_balance : real := 300
var m_balance : real := 280
var years : int := 0

loop
    j_balance *= J_AFTERINT
    m_balance *= M_AFTERINT
    years += 1
    exit when m_balance > j_balance
end loop
put "Max will have more money than Julia after ", years, " years."
