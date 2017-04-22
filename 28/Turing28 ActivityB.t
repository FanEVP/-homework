% Turing 28, 38 overall
% #1-3 in the doc, this is #2 (B)
% Write a GUI program which has a textfield where the user can enter a word. 
% When they press enter the program should output the same string to a second
% textfield, except missing the vowels!

import GUI

var field1 : int
var field2 : int
var label1 : int
var label2 : int
var quitbutton : int

procedure field1pro (input : string)
    var word_new : string := ""
    
    for k : 1 .. length(input)
	if index("AaEeIiOoUu", input(k)) = 0 then
	    word_new += input(k)
	end if
    end for
    GUI.SetText(field2, word_new)
end field1pro

procedure field2pro (input : string)
    var word : string
    var word_new : string := ""
    
    word := GUI.GetText(field1)
    for k : 1 .. length(word)
	if index("AaEeIiOoUu", word(k)) = 0 then
	    word_new += word(k)
	end if
    end for
    GUI.SetText(field2, word_new)
end field2pro

field1 := GUI.CreateTextField(15, 15, 100, "", field1pro)
field2 := GUI.CreateTextField(15 + GUI.GetWidth(field1), 15, 100, "", field2pro)
quitbutton := GUI.CreateButton(GUI.GetWidth(field1) + GUI.GetWidth(field2) + 15, 15, 30, "Quit", GUI.Quit)

label1 := GUI.CreateLabel(15, GUI.GetHeight(field1) + 20, "Enter a word:")
label2 := GUI.CreateLabel(GUI.GetX(field2), GUI.GetHeight(field2) + 20, "Without vowels:")

loop
    exit when GUI.ProcessEvent
end loop
