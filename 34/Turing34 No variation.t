%Turing34, 44 overall
% Use mouse procedures to write a program where a line comes trailing out 
% of the mouse no matter where you move it.

var x, y, button : int

procedure trail (x, y : int)
    var colour0 : int
    randint(colour0, 0, 255)

    drawfilloval(x, y, 25, 25, colour0)
end trail

loop
    Mouse.Where (x, y, button)
    trail(x, y)
end loop
