% Generate integers from 1 to N
range(1, 1, [1]).
range(A, B, [A|T]) :-
    A < B,
    A1 is A + 1,
    range(A1, B, T).

% Helper predicate to print numbers
print_numbers([]).
print_numbers([H|T]) :-
    write(H), nl,
    print_numbers(T).

% Main predicate to generate and print numbers
print_range(N) :-
    range(1, N, L),
    print_numbers(L).
