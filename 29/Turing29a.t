%Turing 29a, 39a overall
% Create a program to mimic my temperature conversion program which converts
% from Celsius to Fahrenheit and vice versa. You'll need two text fields, two 
% buttons, a quit button, labels, a window title. Everything should be properly
% sized, centred, etc.

import GUI
View.Set ("graphics:350;300")
Window.Set (defWinID, "title:Temperature Conversion")

var c_field : int
var c_label : int
var f_field : int
var f_label : int
var quit_button : int
var to_celsius : int
var to_fahrenheit : int

procedure dummy(input : string) %for text fields
end dummy

procedure convert_to_celsius 
    var celsius : string
    var celsius_real : real
    var fahrenheit : string
    var fahrenheit_real : real
    
    fahrenheit := GUI.GetText(f_field)
    fahrenheit_real := strreal(fahrenheit)
    celsius_real := (fahrenheit_real - 32) * 5 / 9
    celsius := realstr(celsius_real, 4)
    
    GUI.SetText(c_field, celsius)
end convert_to_celsius

procedure convert_to_fahrenheit 
    var celsius : string
    var celsius_real : real
    var fahrenheit : string
    var fahrenheit_real : real
    
    celsius := GUI.GetText(c_field)
    celsius_real := strreal(celsius)
    fahrenheit_real := celsius_real * 9 / 5 + 32
    fahrenheit := realstr(fahrenheit_real, 4)
    
    GUI.SetText(f_field, fahrenheit)
end convert_to_fahrenheit

c_field := GUI.CreateTextField(15, 150, 50, "0", dummy)
f_field := GUI.CreateTextField(238, 150, 50, "32", dummy)
c_label := GUI.CreateLabel(15, 170, "Celsius:")
f_label := GUI.CreateLabel(238, GUI.GetHeight(f_field)+150, "Fahrenheit:")

to_celsius := GUI.CreateButton(90, 160, 3, "Convert to celsius", convert_to_celsius)
to_fahrenheit := GUI.CreateButton(80, 120, 3, "Convert to fahrenheit", convert_to_fahrenheit)

quit_button := GUI.CreateButton(125, 80, 3, "Quit", GUI.Quit)

loop
    exit when GUI.ProcessEvent
end loop
