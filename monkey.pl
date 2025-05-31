% State Representation: state(Monkey_Position, Box_Position, Monkey_On_Box, Has_Banana)
% Actions: move, climb, push, grasp

% Goal state: Monkey has the banana
goal_state(state(_, _, _, has)).

% Move to a new position
move(state(Monkey, Box, on_floor, no), move(Monkey, NewPosition), state(NewPosition, Box, on_floor, no)) :-
    adjacent(Monkey, NewPosition).

% Push the box to a new position
move(state(Monkey, Monkey, on_floor, no), push(Monkey, NewPosition), state(NewPosition, NewPosition, on_floor, no)) :-
    adjacent(Monkey, NewPosition).

% Climb on the box
move(state(Monkey, Monkey, on_floor, no), climb, state(Monkey, Monkey, on_box, no)).

% Grasp the banana (only if on the box under the banana)
move(state(Monkey, Box, on_box, no), grasp, state(Monkey, Box, on_box, has)).

% Adjacent positions
adjacent(left, middle).
adjacent(middle, right).
adjacent(right, middle).
adjacent(middle, left).

% Plan to solve the problem
solve(State, []) :- goal_state(State).
solve(State, [Action | Rest]) :-
    move(State, Action, NewState),
    solve(NewState, Rest).

% Query example:
% ?- solve(state(left, middle, on_floor, no), Plan).
	
