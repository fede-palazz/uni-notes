# Exercises

## Family

```perl
# DB family2.pl

father(a,b).
father(a,c).
father(b,d).
father(b,e).
father(c,f).

# Define a predicate:
# - brother(X,Y)
brother(X,Y) :- father(Z,X), father(Z,Y), not(X=Y).
# - cousin(X,Y)
cousin(X,Y) :- father(Z,X), brother(Z,K), father(K,Y).
# - grandson(X,Y)
grandson(X,Y) :- father(Z,X), father(Y,Z).
# - descendent(X,Y)
descendent(X,Y) :- father(Y,X).
descendent(X,Y) :- father(Z,X), descendent(Z,Y).
```

```perl
# Define new predicates (in term of rules using male/1, female/1, parent/2) for the following relations: (DB family3.pl)
# - father
brother(X,Y) :- parent(Z,X), parent(Z,Y), male(X), X\=Y
```

## Calculator

```perl
calc :- X is 100 + 200, write('100 + 200 is '),write(X),nl,
        Y is 400 - 150, write('400 - 150 is '),write(Y),nl,
        Z is 10 * 300, write('10 * 30 is '),write(Z),nl,
        A is 100 / 30, write('100 / 30 is '),write(A),nl,
        B is 100 // 30,write('100 // 30 is '),write(B)nl,
        C is 100 ** 2,write('100 ** 2 is '),write(C),nl,
        D is 100 mod 30,write('100 mod 30 is '),write(D),nl.

```

