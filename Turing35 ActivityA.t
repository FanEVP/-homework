% Turing 35, 45 overall. #1 and 2
% #1
% Write a GUI program which has two textfields, input and output, and one
% button labelled "Make Uppercase".  
import GUI

var convertButton : int
var field_input : int
var field_output : int
var quitButton : int

procedure dummy (input : string) %for output field
end dummy

procedure convert_to_caps (input : string) %for input field
    var text_capitalized : string
    var text_original : string
    
    text_original := GUI.GetText(field_input)
    text_capitalized := Str.Upper(text_original)
    
    GUI.SetText(field_output, text_capitalized)
end convert_to_caps

procedure convert_button %for button
    var input : string := GUI.GetText(field_input)
    
    convert_to_caps(input)
end convert_button

%main
field_input := GUI.CreateTextField(50, 15, 100, "", convert_to_caps)
convertButton := GUI.CreateButton(170, 15, 2, "Capitalize", convert_button)
field_output := GUI.CreateTextField(300, 15, 100, "", dummy)
quitButton := GUI.CreateButton(450, 15, 2, "Quit", GUI.Quit)

loop
    exit when GUI.ProcessEvent
end loop
