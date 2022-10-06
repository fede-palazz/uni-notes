% see(Block, X, Y)
see(c,2,5).
see(d,5,5).
see(e,5,2).

% on(Block, BlockOrTable)
on(a,b).
on(b,c).
% table is an atom
on(c,table).
on(d,table).
on(e,table).

% Regole
z(Block,0) :- on(Block,table).
z(Block,Z) :- on(Block,Block2), z(Block2,Z2), Z is Z2+1.

xy(B,X,Y) :- see(B,X,Y).
xy(B,X,Y) :- on(B0,B), xy(B0,X,Y).

sopra(B,B1) :- on(B,B1).
sopra(B,B1) :- on(B,B0), sopra(B0,B1).
