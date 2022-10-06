sum([],0).
sum([H],H).
sum([H|T],S) :- sum(T,S1), S is S1 + H.
