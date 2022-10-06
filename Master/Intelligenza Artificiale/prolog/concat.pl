concat([],L2,L2).
concat([H|T],L2,[H|L3]):-append(T,L2,L3).
