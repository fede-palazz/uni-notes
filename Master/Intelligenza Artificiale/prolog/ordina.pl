ordinata([]).
ordinata([H]).
ordinata([H|[T|L]]):- H<T, ordinata([T|L]).
