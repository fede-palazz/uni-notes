% Level of pollution

f(X,normal) :- 0=<X,X<3, !.
f(X,alert1) :- X<6, !.
f(X,alert2).

max(X,Y,Max) :- X >= Y, !, Max=X; Max=Y.
