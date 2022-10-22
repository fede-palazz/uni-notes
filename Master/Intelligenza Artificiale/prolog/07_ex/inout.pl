position("Anna", lecturer).
position("John", "Senior Lecturer").

find_position :- 
	write("Whos position do you wish to know?"),
	read(Input), nl,
	position(Input, Output), nl,
	write(Output).

student_age("Arianna", 22).
student_age("Davide", 21).

find_age :-
	write("What's the student's name?"), nl,
	read(Input), nl,
	student_age(Input, Output), nl,
	write(Output).
