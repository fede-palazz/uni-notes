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

```perl
# Data la seguente KB (es_1.pl)
p(1).
p(2):- !.	# p(2) vera se si esegue il cut -> p(3) non si valuta
			# :- !. <==> :- true, !.
p(3).

# Indovinare le risposte alle seguenti richieste
?- p(X).		# X = 1; X = 2. -> a causa del cut

# p(X),p(Y) = prodotto cartesiano
?- p(X),p(Y).	# p(X) = 1, p(Y) = 1
				# p(X) = 1, p(Y) = 2
				# cerca l'ultima volta che X era true (backtrack)
				# p(X) = 2, p(Y) = 1
				# p(X) = 2, p(Y) = 2
				# !. -> end
				
?- p(X),!,p(Y).		# p(X) true -> ! -> p(Y)
					# ! -> no backtracking p(Y) -> p(X)
					# p(X) = 1, p(Y) = 1;
					# p(X) = 1, p(Y) = 2.
```

```perl
# La relazione classifica i numeri a tre classi: 
#	- positive
#	- zero
#	- negative
class(Number,positive) :- Number > 0.
class(0,zero).
class(Number,negative) :- Number < 0.

# Create una forma piu efficiente usando il cut.
# Opzione 1
class(Number,X) :- Number > 0, X=positive, !.
class(Number,X) :- Number < 0, X=negative, !; X=zero.

# Opzione 2
class(Number,positive) :- Number > 0, !.
class(Number,negative) :- Number < 0, !.
class(0,zero).
```

```perl
# Definite la procedura (usando Cut) split(Numbers,Positive,Negative) che divide una lista di numeri in due liste: 
#	- valori positivi (zero incluso)
#	- valori negativi
# Per esempio:
# split([3,-1,0,5,-2],[3,0,5],[-1,-2]).

# Variabili: List (input), Positive, Negative
split([],[],[]).	# Definisco le tre variabili come liste
					# (anche Positive e Negative lo sono)
split([Head|Tail], [Head|Positive], Negative) :- 
	Head >= 0, # Head >= 0 -> lo aggiungo in testa alla lista Positive
	split(Tail, Positive, Negative), !.

split([Head|Tail], Positive, [Head|Negative]) :- 
	Head < 0, # Head < 0 -> lo aggiungo in testa alla lista Negative
	split(Tail, Positive, Negative).
```



