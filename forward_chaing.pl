% Facts: Initial knowledge base
fact(sunny).
fact(warm).
fact(weekend).

% Rules: Deriving new facts from existing ones
rule(go_beach) :- fact(sunny), fact(warm), fact(weekend).
rule(stay_home) :- fact(rainy).
rule(wear_sunscreen) :- fact(sunny).
rule(drink_water) :- fact(warm).

% Forward chaining inference mechanism
forward_chaining :-
    rule(Action),
    \+ fact(Action),  % Ensures new fact is not already known
    assertz(fact(Action)), % Add new fact dynamically
    write('New fact inferred: '), write(Action), nl,
    forward_chaining.

forward_chaining.  % Stop if no more rules apply

% Start the inference process
start :-
    write('Running Forward Chaining...'), nl,
    forward_chaining,
    write('Final Knowledge Base:'), nl,
    list_facts.

% Display all known facts
list_facts :-
    fact(F),
    write('- '), write(F), nl,
    fail.
list_facts.

% Example Query:
% ?- start.
