% Facts: Initial knowledge base
fact(sunny).
fact(warm).
fact(weekend).

% Rules: Defining how a goal can be achieved
rule(go_beach) :- fact(sunny), fact(warm), fact(weekend).
rule(stay_home) :- fact(rainy).
rule(wear_sunscreen) :- fact(sunny).
rule(drink_water) :- fact(warm).

% Backward Chaining: Checking if a goal can be derived
backward_chaining(Goal) :-
    fact(Goal),
    write(Goal), write(' is already known as a fact.'), nl, !.

backward_chaining(Goal) :-
    rule(Goal),  % Check if there is a rule to infer Goal
    write('Inferred '), write(Goal), write(' using rules.'), nl.

backward_chaining(Goal) :-
    write('Cannot determine '), write(Goal), write('.'), nl, fail.

% Example Queries:
% ?- backward_chaining(go_beach).
% ?- backward_chaining(wear_sunscreen).
% ?- backward_chaining(rainy).
