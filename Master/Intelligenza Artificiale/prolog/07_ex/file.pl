write_on_file(File, Text) :-
	open(File,write,Stream),
	write(Stream,Text), nl,
	close(Stream).

read_from_file(File) :- 
	open(File,read,Stream),
	process_stream(Char,Stream).

process_stream(end_of_file,_) :- !.
process_stream(Char,Stream) :-
	write(Char),
	get_char(Stream,Char2),
	process_stream(Char2,Stream).
