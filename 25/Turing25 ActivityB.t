% Turing 25, 35 overall
% 1-6 in the doc. This is #2 (B)
% 2. Write a procedure to produce the following pattern:
% /\
% /\/\
% /\/\/\
% /\/\/\/\
% Your procedure should have one parameter which specifies how many lines
% in the pattern there should be. Test your procedure.
% NOTE: \ is a special character that won't reproduce unless you do it twice 
% in a row…
procedure patterns(lines:int)
    for k : 1 .. lines
	put repeat("/\\", k) 
    end for
end patterns

patterns(4)
