% Define edges with cost: edge(Start, End, Cost).
edge(a, b, 4).
edge(a, c, 3).
edge(b, d, 5).
edge(b, e, 12).
edge(c, f, 7).
edge(c, g, 8).
edge(d, h, 6).
edge(e, i, 2).
edge(f, j, 4).
edge(g, k, 3).
edge(h, l, 9).
edge(i, m, 1).
edge(j, n, 5).
edge(k, o, 7).
edge(m, goal, 0).
edge(o, goal, 0).

% Heuristic function: heuristic(Node, HValue).
heuristic(a, 10).
heuristic(b, 8).
heuristic(c, 7).
heuristic(d, 6).
heuristic(e, 4).
heuristic(f, 5).
heuristic(g, 6).
heuristic(h, 4).
heuristic(i, 2).
heuristic(j, 3).
heuristic(k, 4).
heuristic(l, 6).
heuristic(m, 1).
heuristic(n, 2).
heuristic(o, 3).
heuristic(goal, 0).

% Best First Search: bfs(Start, Goal, Path)
best_first_search(Start, Goal, Path) :-
    bfs([[Start]], Goal, Path).

% If the first path reaches the goal, return it.
bfs([[Goal | Rest] | _], Goal, [Goal | Rest]).

% Expand the best node using heuristic values.
bfs([CurrentPath | OtherPaths], Goal, Path) :-
    CurrentPath = [CurrentNode | _],
    findall([NextNode, CurrentNode | Rest],
            (edge(CurrentNode, NextNode, _), \+ member(NextNode, CurrentPath)),
            ExpandedPaths),
    attach_heuristic(ExpandedPaths, ScoredPaths),
    sort(ScoredPaths, SortedPaths),  % Sort by heuristic value
    extract_paths(SortedPaths, NewPaths),
    append(OtherPaths, NewPaths, UpdatedPaths),
    bfs(UpdatedPaths, Goal, Path).

% Attach heuristic values to paths.
attach_heuristic([], []).
attach_heuristic([[Node | Path] | Rest], [[H, [Node | Path]] | ScoredRest]) :-
    heuristic(Node, H),
    attach_heuristic(Rest, ScoredRest).

% Extract paths from scored paths.
extract_paths([], []).
extract_paths([[_H, Path] | Rest], [Path | ExtractedRest]) :-
    extract_paths(Rest, ExtractedRest).

% Example Query:
% ?- best_first_search(a, goal, Path).
