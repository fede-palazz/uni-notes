# Negazione come fallimento

## Negazione come fallimento

```perl
# Ex: Mary likes all animals except snakes
# Il predicato fail fallirà sempre
# If X is a snake, then return false
likes(mary,X) :- snake(X), !, fail.	# fail -> built-in predicate
likes(mary,X) :- animal(X).

# Posso utilizzare una sola regola
likes(mary,X) :- snake(X),!,fail; animal(X).

# Ex: different
different(X,X) :- !, fail.
different(X,Y).
# Oppure
different(X,Y) :- X=Y,!,fail; true.
```

```perl
# fail si può utilizzare per implementare un operatore not
not(P) :- P,!,fail; true.

# Quindi
different(X,Y) :- not(X=Y).
```

## Problemi con Cut e Negazioni

- ci sono alcune situazioni in cui usando il cut si cambia:

  - il significato dichiarativo della regola
  - il risultato ottenuto

  ```perl
  # Ex: p <==> (a && b) || c
  p :- a,b.
  p :- c.
  
  # Aggiungendo il cut
  # p <==> (a && b) || (a && c)
  p :- a,!,b.
  p :- c.
  ```

  - cambiare l'ordine delle clausole

## Closed world assumptions

```perl
# Ex
round(ball).

?- round(ball).			# yes (è un fatto)
?- round(earth).		# no (qualsiasi cosa che prolog non trova)
?- not round(earth).	# yes
```

