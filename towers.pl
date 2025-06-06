% Towers of Hanoi implementation
% hanoi(N, Source, Destination, Auxiliary) moves N disks from Source to Destination using Auxiliary.

hanoi(1, Source, Destination, _) :-
    write('Move disk 1 from '), write(Source),
    write(' to '), write(Destination), nl.

hanoi(N, Source, Destination, Auxiliary) :-
    N > 1,
    N1 is N - 1,

    % Move (N-1) disks from Source to Auxiliary
    hanoi(N1, Source, Auxiliary, Destination),

    % Move the Nth disk from Source to Destination
    write('Move disk '), write(N), write(' from '), write(Source),
    write(' to '), write(Destination), nl,

    % Move (N-1) disks from Auxiliary to Destination
    hanoi(N1, Auxiliary, Destination, Source).
