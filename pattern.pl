% Pattern Matching for Lists
match_list([H|T]) :-
    write('Head: '), write(H), nl,
    write('Tail: '), write(T), nl.

% Pattern Matching for Tuples
match_tuple((X, Y)) :-
    write('First Element: '), write(X), nl,
    write('Second Element: '), write(Y), nl.

% Pattern Matching for Structures
match_structure(person(Name, Age)) :-
    write('Name: '), write(Name), nl,
    write('Age: '), write(Age), nl.

% Example Queries:
% ?- match_list([apple, banana, cherry]).
% ?- match_tuple((john, 25)).
% ?- match_structure(person(alice, 30)).
