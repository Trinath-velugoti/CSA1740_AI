% Facts about birds
% bird(Name, CanFly).

bird(sparrow, yes).
bird(eagle, yes).
bird(pigeon, yes).
bird(parrot, yes).
bird(penguin, no).
bird(ostrich, no).
bird(kiwi, no).
bird(peacock, yes).

% Rule to check if a bird can fly
can_fly(Bird) :-
    bird(Bird, yes),
    write(Bird), write(' can fly.'), nl.

can_fly(Bird) :-
    bird(Bird, no),
    write(Bird), write(' cannot fly.'), nl.
