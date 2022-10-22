% Sum of two numbers
sum(X,Y) :- S is X+Y, write(S).

% Max between two numbers
max(X,Y) :-
	X=Y, write("both are equal");
	X>Y, M is X, write(M);
	M is Y, write(M).

% Factorial of N
factorial(0,1).
factorial(N,F) :-
	N>0,
	N1 is N-1,
	factorial(N1,F1), 
	F is N*F1.

% Fibonacci series
fib(1,0).
fib(2,1).
fib(N,X) :-
	N1 is N-1, N2 is N-2,
	fib(N1,X1), fib(N2,X2),
	X is X1+X2, !.

% GCD
gcd(0,A,A) :- !.
gcd(A,0,A) :- !.
gcd(A,B,R) :- B1 is mod(A,B), gcd(B,B1,R).

% Power of a number
power(_,0,1) :- !.
power(Num,Pow,Ans) :- Ans is Num^Pow.
