sing_a_song(anna).
listens_to_music(sandro).


listen_to_music(anna) :- sing_a_song(anna).
happy(anna) :- sing_a_song(anna).
happy(sandro) :- listens_to_music(sandro).
playes_guitar(sandro) :- listens_to_music(sandro).
