% Turing 28, 38 overall
% #1-3 in the doc, this is #1 (A)
% Create a text field which you label centimeters. Whenever the user inputs a
% value in your text field you output an amount corresponding to the same
% length in inches into a second textfield. ie. They enter 10 and you output to
% the other textfield  "10 cm = 4 inches"
% Use 2.54 as your conversion rate and round to anything reasonable.
% Hints:
% Don't forget what they enter will be a string and you'll need to convert to a
% number to do mathematical operations! (think strreal)
% Don't forget to add a quit button…

import GUI

var field_cm : int %the first text field, for the user to input centimetres
var field_in : int %the second text field, which outputs in inches
var label_cm : int
var label_in : int
var quitbutton : int

procedure cmpro(input: string) %procedure for the first text field
    var cm_real : real
    var inches_real : real
    var inches_string : string
    var statement : string
    
    cm_real := strreal(input)
    inches_real := (cm_real / 2.54)
    inches_string := realstr(inches_real, 2) %realstr required a width parameter (FUTURE REFERENCE)
    statement := input + " cm = " + inches_string + " in" 
    GUI.SetText(field_in, statement)
end cmpro

procedure inpro(input : string) %procedure for the second text field
    var cm_real : real
    var cm_string : string
    var inches_real : real
    var inches_string : string
    var statement : string
    
    cm_string := GUI.GetText(field_cm)
    cm_real := strreal(cm_string)
    inches_real := (cm_real / 2.54)
    inches_string := realstr(inches_real, 2)
    statement := cm_string + " cm = " + inches_string + " in"
    GUI.SetText(field_in, statement)
end inpro

%main program
field_cm := GUI.CreateTextField(15, 60, 80, "0", cmpro)
field_in := GUI.CreateTextField(15, 15, 100, "", inpro)
label_cm := GUI.CreateLabel(15, 85, "Centimetres:")
label_in := GUI.CreateLabel(15, 40, "Inches:")
quitbutton := GUI.CreateButton(150, 15, 20, "Quit", GUI.Quit)

loop
    exit when GUI.ProcessEvent
end loop
