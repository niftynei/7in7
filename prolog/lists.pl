% Add two lists together
concat([], List, List).
concat([Head|Tail1], List, [Head|Tail2]) :- concat(Tail1, List, Tail2).

% Reverse the contents of a list
recurse([],[]).
recurse([First|Rest], List) :- recurse(Rest, Rest2), concat(Rest2, [First], List).

% Return the smaller of two numbers
sm(X,Y,Z) :- X =< Y, X = Z ; Y<X, Y = Z.
% Return the larger of two numbers
lg(X,Y,Z) :- X >= Y, Z is X; Y>X, Z is Y.

% Return the smallest member of a list
small([X],X).
small([First|Rest], Smallest) :- small(Rest, Last), sm(First,Last,Smallest).

% Return the last member of a list
llast([X],X).
llast([First|Rest], Smallest) :- llast(Rest, Smallest).

% Sort a list
lsort([X],[X]).
lsort(Input, [Z|Return]):-
	small(Input, Z),
	without(Input, Z, InputWithoutZ),
	lsort(InputWithoutZ, Return).

% Remove an element from a list
without([],X,[]).
without([First|Rest], Elem, Without) :-
	First = Elem ->	concat([],Without1,Without),without(Rest,Elem,Without1);
	concat([First],Without1,Without),without(Rest, Elem,Without1).


