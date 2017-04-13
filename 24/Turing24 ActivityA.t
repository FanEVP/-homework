% Turing 24, 34 overall
% #1-3 and challenge #6 in the doc. This is #1 (A)
% Write a procedure that takes a string, word, and an integer, n, as inputs 
% and then outputs the word to the screen n times. Write a program to test your
% procedure. Hint, your main program may be very short! Don't ask the user for
% input but have you (the programmer) choose the word and n values.

procedure word_output (word : string, n : int)
    for k : 1 .. n
	put word
    end for
end word_output

%main
word_output ("Vilnius", 7)
