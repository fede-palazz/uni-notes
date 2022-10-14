# Liste-Backtracking-Negazioni

- esempi con liste
- prevenire backtracking usando il cut
- negazione del fallimento

## Liste, operatori aritmetici

- Creare una lista

```perl
# Lista numerica
?- L=[1,2,3,4].		# L = [1,2,3,4]

# Lista vuota
?- L=[].			# L = []
```

- Ricercare valori

```perl
# Verificare se il valore '2' appartiene alla lista L
# 'member' è una built-in function
?- member(2,[1,2,3,4]).		# true; false.
?- member(2,[1,2,3,2]).		# true; true.
```

- Numero di elementi

```perl
L1 = [link(a,b),link(a,c),link(c,d)]	# 3 elementi
L2 = [a,[b,c],[],f(X,Y)]				# 4 elementi

?- [Head|Tail]=[a,b,c,d].	# Head = a, Tail = [b,c,d]
```

- Built-in member

```perl
member(X, [X|_]).		# X è la head della lista?
member(X, [_|L]) :- member(X,L).	# X è membro della lista?
member(X,[test,punto(1,2),valore]).

```

- concatenazione

```perl
append(L1,L2,L3).		# concatena L1,L2 creando la lista L3
append([],L).			# L

append([X|L1],L2,[X|L3]) :- append(L1,L2,L3).
append([1,2],[3,4],[1,2,3,4]).	# true -> comparazione

# Splittare una lista
# [Before] + [may|After] deve risultare in Month
Month = [jan,feb,...,dec], append(Before,[may|After],Month).
# Month = [jan,...,dec], Before = [jan,...,apr], After = [jul,...,dec]

# Rimuovere elementi
L1 = [a,b,c,d,d,d,e,f], append(L2,[ddd|_],L1).	# L2 = [a,b,c,e,f]
```

## Instantiation & Backtracking

- **Backtracking**
  - le regole vengono controllate sempre tutte
  - successivamente si ritorna alla prima regola che ha risultato `true`
  - ciò può risultare in un peggioramento delle prestazioni

```perl
# Ex: livello inquinamento (DB pollution.pl)
f(X,normal) :- 0=<X,X<3.
f(X,alert1) :- 3=<X,X<6.
f(X,alert2) :- 6=<X.

f(5,X).		# X = normal -> vengono cmq controllate tutte le regole
```

- **Cut**
  - simbolo: `!`
  - interrompe le alternative quando prolog trova una regola true
  - previene i backtracking inutili

```perl
f(X,normal) :- 0=<X,X<3, !.
f(X,alert1) :- 3=<X,X<6, !.
f(X,alert2) :- 6=<X.

?- f(5,X). 		# 0=<X,X<3 -> false -> salta il cut
				# 3=<X,X<6 -> true  -> legge il cut e si ferma
			
?- f(7,X).		# non cambia l'esecuzione essendo l'ultima regola
```

```perl
# Versione modificata togliendo le ridondanze
f(X,normal) :- 0=<X,X<3, !.
f(X,alert1) :- X<6, !.
f(X,alert2).

# Però ad esempio...
?- f(2,alert1).		# true -> 2<3, non vengono comparati gli atoms
					# non stiamo verificando il valore del II argomento
					# (abbiamo inizializzato il risultato)

?- f(2,Y), Y=alert1.	# false
```

```perl
# Trovare il massimo tra due valori
max(X,Y,X) :- X >= Y.
max(X,Y,Y) :- X < Y.

# Più efficiente con il cut
max(X,Y,X) :- X >= Y, !.
max(X,Y,Y).

# But...
?- max(3,1,1).		# true -> formulazione corretta
					# non si fa il check sul risultato
					
# Formulazione corretta
max(X,Y,Max) :- X >= Y, !, Max=X; Max=Y.	# ';' -> OR
# Esecuzionemenne:
# X > Y -> true -> ! -> Max=X
# X > Y -> false -> Max=Y

```

## Esercizi





