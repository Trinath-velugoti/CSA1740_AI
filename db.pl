% Facts: name(Name, Date_of_Registration).
name_dor('Alice', '2023-01-15').
name_dor('Bob', '2022-06-10').
name_dor('Charlie', '2024-03-05').
name_dor('David', '2021-12-25').
name_dor('Emma', '2023-07-19').

% Rule: Retrieve registration date by name
get_dor(Name, DOR) :-
    name_dor(Name, DOR).

% Rule: Find all names registered before a specific year
registered_before(Year, Name) :-
    name_dor(Name, DOR),
    split_string(DOR, "-", "", [Y, _, _]), % Extract year from date
    atom_number(Y, YearNum),
    YearNum < Year.
