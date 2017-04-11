% Lesson 12? of Turing/Lesson 22 total
% 7 questions. This is #7 (G)
% In the story Goldilocks and the Three Bears, each bear had a bowl of 
% porridge to eat while sitting at his/her favourite chair. 
% What the story didn't tell us is that Goldilocks moved the bowls
% around on the table, so the bowls were not at the right seats anymore.
% The bowls can be sorted by weight with the lightest bowl being the 
% Baby Bear's bowl, the medium bowl being the Mama Bear's bowl and the
% heaviest bowl being the Papa Bear's bowl. 
% Write a program that reads in three weights and prints out the weight of
% Mama Bear's bowl. You may assume all weights are positive integers 
% less than 100.

var weight1 : real
var weight2 : real
var weight3 : real
var weight_mum : real

put "What is the weight of the first bowl? " .. 
get weight1
put "What is the weight of the second bowl? " ..
get weight2
put "What is the weight of the third bowl? " ..
get weight3

if (weight1 < weight2 and weight1 > weight3) or (weight1 > weight2 and weight1 < weight3) then
    put "Mama Bear's bowl weighs ", weight1
elsif (weight2 < weight1 and weight2 > weight3) or (weight2 > weight1 and weight2 < weight3) then
    put "Mama Bear's bowl weighs ", weight2
elsif (weight3 < weight1 and weight3 > weight2) or (weight3 > weight1 and weight3 < weight2) then
    put "Mama Bear's bowl weighs ", weight3
end if
