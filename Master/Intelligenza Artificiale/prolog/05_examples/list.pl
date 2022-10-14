p([1,2,3,4,5]).

% Check if a variable is a list
is_list([]).
is_list([_|L]) :- is_list(L).

% Check if a value is a member of a list
member(T,[T|_]).
member(T,[_,L]) :- member(T,L).

% Check if two lists have common elements or not
no_common([],_).
no_common([H1|L1],L2) :- \+ member(H1,L2), no_common(L1,L2).

% Define the length of a list
len([],0).
len([_|T],N) :- len(T,N1), N is N1+1.

% Concatenate two lists
append([],L,L).
append([X|L1],L2,[X|L3]) :- append(L1,L2,L3).

% Reverse a list
reverse([],[]).
reverse([H|T],R) :- reverse(T,L1), append(L1,[H],R).

% Palindrome
pal([]).
pal([_]).
pal(Word) :- append([H|T],[H],Word), pal(T).

% Minimun value
min_elem([Min], Min).
min_elem([Min|T], Min) :- min_elem(T, Tmin), Min =< Tmin.
min_elem([H|T], Tmin) :- min_elem(T, Tmin), H>Tmin.
