% class(Number,X) :- Number > 0, X=positive, !.
% class(Number,X) :- Number < 0, X=negative, !; X=zero.

class(Number,positive) :- Number > 0, !.
class(Number,negative) :- Number < 0, !.
class(0,zero).
