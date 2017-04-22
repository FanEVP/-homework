% Turing 28, 38 overall
% #1-3 in the doc, this is #3 (C)
% Write a GUI program with one textfield where the user enters a number.
% Then you replace the value with a number one higher.

import GUI

var field_num : int
var field_onemore : int
var label_num : int
var label_onemore : int
var quitbutton : int

procedure getnumber(input : string) %for field_num
    var number_int : int
    var number_new : int
    var number_new_string : string
    
    number_int := strint (input)
    number_new := number_int + 1
    number_new_string := intstr(number_new)
    
    GUI.SetText(field_onemore, number_new_string)
end getnumber

procedure secondfield(input : string) %for field_onemore
    GUI.SetText(field_onemore, input)
end secondfield

%main
label_num := GUI.CreateLabel(15, 120, "Enter number:")
field_num := GUI.CreateTextField(15, 100, 35, "", getnumber)
label_onemore := GUI.CreateLabel(15, 70, "Next number:")
field_onemore := GUI.CreateTextField(15, 50, 35, "", secondfield)
quitbutton := GUI.CreateButton(120, 50, 20, "Quit", GUI.Quit)

loop
    exit when GUI.ProcessEvent
end loop
