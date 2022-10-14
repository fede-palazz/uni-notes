# Esempi programmi

## Robot

- un robot vuole manipolare dei blocchi su una tavola
- il robot <u>può vedere</u> blocchi attraverso una camera montata sul pavimento
- il robot vuole sapere le <u>coordinate del blocco</u>, se è affarrabile (nessun blocco sopra di esso), etc.

```perl
# Fatti
# see(Block, X, Y)	-> blocchi presenti (a,d,e) alle coordinate X,Y
see(c,2,5).
see(d,5,5).
see(e,5,2).

# on(Block, BlockOrTable)
on(a,b).		# a is over b
on(b,c).
on(c,table).	# table is an atom
on(d,table).
on(e,table).

# Query
# Dove vede il robot il blocco a?
?- see(a,X,Y).
# Quali blocchi riesce a vedere il robot?
?- see(Block,_,_).		# non mi interessano le coordinate
# Blocchi con la stessa Y (?)
?- see(B1,_,Y), see(B2,_,Y).	# con questa query non abbiamo specificato che i blocchi devono essere differenti
# (potremmo ricevere in output lo stesso blocco più volte)
?- see(B1,_,Y), see(B2,_,Y), B1\==B2.
```

### Coordinata Z

- definizione dell'altezza di un blocco (partendo da quella del blocco più in basso e aumentandola ricorsivamente)
- tutti i blocchi sul tavolo hanno z=0

```perl
z(Block,0) :- on(Block,table).	# blocchi sul tavolo -> z=0
z(Block,Z) :- on(Block,Block2), z(Block2,Z2), Z is Z2+1
z(Block,Z2+1) :- on(Block,Block2), z(Block2,Z2). # forma compatta
```

### Coordinate X-Y

- il robot non può vedere i blocchi `b`,`c`
- sappiamo soltanto che `a` è sopra `b` e `c` e che questi due hanno le stesse coordinate di `a`

```perl
# voglio ottenere le coordinate dei blocchi b,a ma non sono visibili (sono sopra al blocco c)
xy(B,X,Y) :- see(B,X,Y).	# un blocco ha delle coordinate specificate solo se è visibile
xy(B,X,Y) :- on(B0,B), xy(B0,X,Y).	# le coordinate X,Y di un blocco B le ottengo valutando la presenza di un blocco
```

### Tracing

- `gtrace. ` -> attiva il debugger visuale
  - visualizza
    - **call stack** (chiamate ai fatti/regole)
    - **arguments** (valore attuale delle variabili)
  - colori
    - verde -> successfull
    - rosso -> false
    - giallo -> contiene una ricorsione

- `notrace.` -> disattiva il debugger

### Stessa altezza

- verificare se dei blocchi hanno lo stesso valore di z

```perl
# on è un fatto, per usare la ricorsione mi serve una regola
sopra(B,B1) :- on(B,B1).
sopra(B,B1) :- on(B,B0), sopra(B0,B1).

# N.B: oltre che raggruppare insieme le regole con stesso nome e argomenti, è importante anche l'ordine di dichiarazione
# es: scambiando le righe sopra si ottiene un ciclo infinito (call stack infinita)
# Quindi MAI anticipare le chiamate ricorsive, prima si devono dichiarare le regole semplici

# Trovare il numero di blocchi sopra ad un blocco
n_over(B,0) :- not(on(_,B)).
n_over(B,X) :- sopra(B1,B), n_over(B1,Sop), X is Sop+1.
```

### Dichiarativo vs Procedurale

- dichiarativo
  - ciò che capiamo noi
  - `A&B` <u>logical equivalent</u> a `B&A`
  - declarative meaning of Prolog program = logical meaning
  - order of goals in clauses doesn't affect declarative meaning
- procedurale
  - ciò che viene eseguito dal Prolog
  - procedural meaning of Prolog = algorithm for searching for proof
  - order of goals and clauses <u>DOES</u> affect search for proof

### Progetto

- creare delle clause necessarie per identificare il numero dei blocchi presenti sopra un blocco esistente

## Map Coloring

- <u>Problem</u>: given a map, color the countries within it
- <u>Theorem</u>: Four colors are sufficient to color any map
- <u>Constraint</u>: The same color can't be assigned to countries that are near each other

```perl
# possible pairs of colors of neighbour countries
n(red, green).		n(red, blue).		n(red, yellow).
n(green, red).		n(green,blue).		n(green, yellow).
n(blue, red).		n(blue, green). 	n(blue, yellow).
n(yellow, red). 	n(yellow, green). 	n(yellow, blue).

n(IT,SLO). 	n(IT,FR). 	n(IT,Sea).	n(Sea,SLO). ...

colours(IT,CH,AUT,Sea) :- Sea=blue, n(IT,Sea), n(IT,CH).
```

## Scheduling a meeting

- Organizing a project meeting according to these specifications
  - the meeting is organized in 3 sessions:
    - artificial intelligence
    - bioinformatics
    - databases
  - each session takes half an hour...

- problem is to assign <u>times</u> and <u>experts</u> to sessions
  - `session(Time,Topic,P1,P2)`, Pi are participants
  - `time(morning)`, `time(afternoon).`, `before(morning,afternoon).`

```perl
# Expert for topics
expert(bioinformatic, barbara).
expert(bioinformatic, ben).
expert(artificial_intelligence, adam).
expert(database,danny)

```

