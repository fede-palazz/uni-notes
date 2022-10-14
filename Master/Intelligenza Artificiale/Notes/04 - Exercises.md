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

## Lists

```perl
# Describe the queries' results (DB list.pl)
p([1,2,3,4,5]).

# Assign the entire list to the X variable
?- p(X).	# [1,2,3,4,5]

# X head of the list, Y tail
?- p([X|Y]).		# X = 1, Y = [2, 3, 4, 5].

# The list has only one variable, can't assign a value to Y
?- p([X,Y]).		# false

# Two heads, one tail 
?- p([X,Y|Z]).		# X = 1, Y = 2, Z = [3, 4, 5].

# Print the list but hide the head
?- p([_|X]).		# X = [2, 3, 4, 5].
```

~~~perl
# Check if a variable is a list
is_list([]).
is_list([_|L]) :- is_list(L).

# Check if one number is in the list
member(T,[T|_]).
member(T,[_,L]) :- member(T,L).
~~~

```perl
# Check if two lists have common elements or not

# Method 1
no_common([],_).
# \+ member() -> not member of
no_common([H1|L1],L2) :- \+ member(H1,L2), no_common(L1,L2).

# Method 2
# '!' -> break
# 'fail' -> valori da controllare terminati
no_common(L1,L2) :- member(Elem,L1), memberchk(Elem,L2), !, fail.
no_common(_,_).

# Method 3
no_common(L1,L2) :- \+ (member(X,L1), member(X,L2)).
```

```perl
# Define the length of a list
len([],0).
len([_|T],N) :- length(T,N1), N is N1+1.
```

```perl
# Concatenate two lists
append([],L,L).
append([X|L1],L2,[X|L3]) :- append(L1,L2,L3).
```

```perl
# Reverse a list
reverse([],[]).
reverse([H|T],R) :- reverse(T,L1), append(L1,[H],R).
```

```perl
# Check whether a word is palindrome or not
pal([]).
pal([_]).
pal(Word) :- append([H|T],[H],Word), pal(T).
```

```perl
# Find the minimum value of a list
min_elem([Min], Min).
min_elem([Min|T], Min) :- min_elem(T, Tmin), Min =< Tmin.
min_elem([H|T], Tmin) :- min_elem(T, Tmin), H>Tmin.
```

## Operations

```perl
# DB sum.pl

# Sum of two numbers
sum(X,Y) :- S is X+Y, write(S).

# Max between two numbers
max(X,Y) :-
	X=Y, write("both are equal");
	X>Y, M is X, write("Max: ", M);	# M not necessary
	M is Y, write("Max: ", M).
```

```perl
# Find the factorial of N
factorial(0,1).
factorial(N,F) :-
	N>0,
	N1 is N-1,
	factorial(N1,F1), 
	F is N*F1.
```

```perl
# Implement the Fibonacci series till the Nth term
# F0 = 0, F1 = 1, Fn = Fn-1 + Fn-2 for n>1
# Fn è dato dalla somma dei precedenti due numeri
fib(1,0).
fib(2,1).
fib(N,X) :-
	N1 is N-1, N2 is N-2,
	fib(N1,X1), fib(N2,X2),
	X is X1+X2, !.
```

```perl
# Calculate the GCD (Greatest Common Divider) between two numbers
gcd(0,A,A) :- !.
gcd(A,0,A) :- !.
gcd(A,B,R) :- B1 is mod(A,B), gcd(B,B1,R).
```

```perl
# Determine the power Pow of a number Num
power(_,0,1) :- !.
power(Num,Pow,Ans) :- Ans is Num^Pow.
```

## Homeworks

```perl
# Consider a cyclic directed graph:
#	edge(p,q), edge(q,r), edge(q,s), edge(s,t)
# Write a predicate that indicates whether exists a path between two nodes A and B
```





