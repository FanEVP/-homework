%Turing Review Day 1
%Textbook pg 99 #6, 8, 14, pg 120 #1, 4, 8, 11a, 12, 14, 15
%This is 99-14
% ask for student's name, what each of the five tests is marked out of, 
% what mark they got on each test. 
% calculate and output the percentage for each test, and the avg percentage
% always address student by name

var name : string
var markmax : array 1 .. 5 of int
var markrec : array 1 .. 5 of int
var percentages : array 1 .. 5 of real
var percentage_avg : real := 0 %REMEMBER TO INITIALIZE

put "What is your name? " ..
get name

for k : 1 .. 5
    put name, ", what was the maximum possible mark for test #", k, "?"
    get markmax(k)
    loop
	put name, ", what was your mark for test #", k, "?"
	get markrec(k)
	exit when markrec(k) <= markmax(k)
    end loop
    percentages(k) := markrec(k) / markmax(k) * 100
    percentage_avg += percentages(k)
end for

percentage_avg /= 5

for k : 1 .. 5
    put name, ", your percentage mark for test #", k, " was ", percentages(k):0:2, "."
end for

put name,", your average percentage mark is ", percentage_avg:0:2, "."
