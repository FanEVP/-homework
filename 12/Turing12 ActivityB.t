% Lesson 12? of Turing/Lesson 22 total
% 7 questions. This is #2 (B)
% Write a program which asks the user for the weight of a set of packages. 
%  It should compute the average weight of the packages. 
% Continue to accept package weights from the user until they enter zero.  
% Bonus: Modify the program so that if the weight is negative you give the user
% an error message and ignore this weight in your average.  

var noPackages : int := 0
var unitweight : string
var weight : real
var weight_all : real := 0
var weight_avg : real

put "Enter the weights of your packages. When you are done entering weights, enter 0."
put "What unit is weight being measured in? " ..
get unitweight 
loop
    put "Please enter how many ", unitweight, " your package weighs."
    get weight
    if weight > 0 then
	weight_all += weight
	noPackages += 1
    end if
    exit when weight = 0
end loop

weight_avg := weight_all / noPackages
put "You entered the weight of ", noPackages, " packages."
put "The total weight of your packages is ", weight_all, " ", unitweight, "."
put "The average weight is ", weight_avg:0:2, " ", unitweight, "."


