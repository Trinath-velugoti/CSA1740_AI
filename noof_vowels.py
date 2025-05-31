% Base case: An empty list has 0 vowels
count_vowels([], 0).

% Recursive case: Check if the head of the list is a vowel
count_vowels([H|T], Count) :-
    is_vowel(H),   % If H is a vowel, increment count
    count_vowels(T, RestCount),
    Count is RestCount + 1.

% Recursive case: If H is not a vowel, continue without incrementing
count_vowels([H|T], Count) :-
    \+ is_vowel(H),
    count_vowels(T, Count).

% Define vowel characters
is_vowel(a).
is_vowel(e).
is_vowel(i).
is_vowel(o).
is_vowel(u).
is_vowel(A) :- char_code(A, C), char_code(a, CA), char_code(e, CE),
               char_code(i, CI), char_code(o, CO), char_code(u, CU),
               member(C, [CA, CE, CI, CO, CU]). % Handle character codes for single-character atoms

% Helper predicate to convert an atom to a list of characters
string_to_list(String, List) :-
    atom_chars(String, List).

% Wrapper predicate to count vowels in a string
count_vowels_in_string(String, Count) :-
    string_to_list(String, List),
    count_vowels(List, Count).

% Example Queries:
% ?- count_vowels_in_string('hello world', Count).
% ?- count_vowels_in_string('prolog is fun', Count).
% ?- count_vowels_in_string('AEIOUaeiou', Count).
