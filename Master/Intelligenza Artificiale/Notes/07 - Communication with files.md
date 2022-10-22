# Communication with files

## Reading and writing

```perl
# reading
see(file1), 			# Open input file
read_from_file(File),	# Read the file
Seen					# Close file

# writing
tell(file2),			# Open output file
# Create the 'test.txt' file and write 'text' inside it
writing_on_file('test.txt', 'text').
Told					# Close file
```

```perl
# Ex (DB inout.pl)
position("Anna", lecturer).
position("John", "Senior Lecturer").

find_position :- 
	write("Whos position do you wish to know?"),
	read(Input), nl,	# Read input param
	position(Input, Output), nl,
	write(Output).		# Print result
	
student_age("Arianna", 22).
student_age("Davide", 21).

find_age :-
	write("What's the student's name?"), nl,
	read(Input), nl,
	student_age(Input, Output), nl,
	write(Output).
```

```perl
# Write on data file (DB file.pl)
# If you want to write just one string use write, else use append
write_on_file(file, Text) :-
	open(File,write,Stream),	# Stream -> logical address
	write(Stream,Text), nl,		# Write to the stream
	close(Stream).				# Close the stream (file)
	
# Read data from file
read_from_file(File) :- open(File,read,Stream).

get_char(Stream,char1).		# Get char from the data stream

process_stream(Char1,Stream).
close(Stream).

process_stream(end_of_file,_) :- !.
process_stream(Char,Stream) :-
	write(Char),
	get_char(Stream,Char2),
	process_stream(Char2,Stream).
```

```perl
# Append a string to a file
append('file.txt'), write("some_text"), told.
```

```perl
# Ex: cube
```

