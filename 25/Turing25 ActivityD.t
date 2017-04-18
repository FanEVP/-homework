% Turing 25, 35 overall
% 1-6 in the doc. This is #4 (D)
% Write a program which calculates the area and perimeter of different shapes.
% You should have many different subprograms, each one designed to calculate 
% either the area or perimeter of a unique shape. 
% ie. areaOfCircle or perimeterOfTriangle 
% Your program should ask the user what shape they are interested in.
% Depending on their choice of shape it should prompt the user for the 
% appropriate measurements needed. It then should call the appropriate 
% subprograms and output the area and perimeter of the shape.
% Your program should handle at a minimum the shapes rectangle, triangle,
% and circle. Once you have your program working you can try and make it more
% robust so it handles incorrect input successfully.

function areaCircle(radius : real) : real
    var area : real
    area := radius**2 * 3.14
    result area
end areaCircle

function areaRectangle(lengtha : real, width : real) : real
    var area : real
    area := lengtha * width
    result area
end areaRectangle

function areaTriangle(base : real, height : real) : real
    var area : real
    area := base * height / 2
    result area
end areaTriangle

function perimeterCircle(radius : real) : real
    var per : real
    per := 2 * 3.14 * radius
    result per
end perimeterCircle

function perimeterRectangle(lengtha : real, width: real) : real
    var per : real
    per := (lengtha + width) * 2
    result per
end perimeterRectangle

function perimeterTriangle(base : real, side1 : real, side2 : real) : real
    var per : real
    per := base + side1 + side2
    result per
end perimeterTriangle

%main
var cirRadius : real
var recLength : real
var recWidth : real
var shape : string
var triBase : real
var triHeight : real
var triSide1 : real
var triSide2 : real

loop
    put "What shape? (Choices are triangle, rectangle, circle). " ..
    get shape
    exit when shape = "circle" or shape = "rectangle" or shape = "triangle"
end loop

case shape of
    label "circle" : 
	put "What is the radius? " ..
	get cirRadius
	put "The area is ", areaCircle(cirRadius):0:2, "."
	put "The perimeter is ", perimeterCircle(cirRadius):0:2, "."
    label "rectangle" :
	put "What is the length? " ..
	get recLength
	put "What is the width? " ..
	get recWidth
	put "The area is ", areaRectangle(recLength, recWidth):0:2, "."
	put "The perimeter is ", perimeterRectangle(recLength, recWidth):0:2, "."
    label "triangle" :
	put "What is the base? " ..
	get triBase
	put "What is one of the other side lengths? " ..
	get triSide1
	put "What is the other side length? " ..
	get triSide2
	put "What is the height? " ..
	get triHeight
	put "The area is ", areaTriangle(triBase, triHeight):0:2, "."
	put "The perimeter is ", perimeterTriangle(triBase, triSide1, triSide2):0:2, "."
end case

