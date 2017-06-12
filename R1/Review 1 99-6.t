%Turing Review Day 1
%Textbook pg 99 #6, 8, 14, pg 120 #1, 4, 8, 11a, 12, 14, 15
%This is 99-6
% Write a program to calculate + output the product of three numbers entered
% via keyboard. Use constants for the greeting

const GREETING := "Enter three real numbers and the product will be calculated"
var num1, num2, num3 : real
var product : real

put GREETING
get num1, num2, num3

product := num1 * num2 * num3

put num1, " * ", num2, " * ", num3, " = ", product 
