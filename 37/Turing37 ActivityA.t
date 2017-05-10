%Turing37, 47 overall. #1 - 3
% This is #1 (A)
% We will use arrays to create a very simple data base. Use arrays to gather 
% and store 10 items and the number of that item they have in their inventory.
% Then allow the user to enter an item and let them know how many of that item 
% they have in inventory.

var amount_requested : int
var item_amount : array 1 .. 10 of int
var item_name : array 1 .. 10 of string
var item_requested : string

for k : 1 .. 10
    get item_name(k)
    get item_amount(k)
end for

put "Which item? " ..
get item_requested

for m : 1 .. 10
    if item_name(m) = item_requested then 
	amount_requested := item_amount(m)
    end if
end for

put "You have ", amount_requested, " of those."
