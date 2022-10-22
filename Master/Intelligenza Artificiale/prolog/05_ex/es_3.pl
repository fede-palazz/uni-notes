split([],[],[]).
split([Head|Tail],[Head|Positive],Negative) :-
	Head >= 0, 
	split(Tail, Positive, Negative), !.

split([Head|Tail],Positive,[Head|Negative]) :- 
	Head < 0, 
	split(Tail, Positive, Negative).
