% Facts: planet(Name, Order, Type, Diameter in km).
planet(mercury, 1, terrestrial, 4879).
planet(venus, 2, terrestrial, 12104).
planet(earth, 3, terrestrial, 12742).
planet(mars, 4, terrestrial, 6779).
planet(jupiter, 5, gas_giant, 139820).
planet(saturn, 6, gas_giant, 116460).
planet(uranus, 7, ice_giant, 50724).
planet(neptune, 8, ice_giant, 49244).

% Rule: Find the type of a given planet
planet_type(Name, Type) :-
    planet(Name, _, Type, _).

% Rule: Find all planets of a certain type
planets_of_type(Type, Name) :-
    planet(Name, _, Type, _).

% Rule: Find planets larger than a given diameter
larger_than(Diameter, Name) :-
    planet(Name, _, _, D),
    D > Diameter.

% Rule: Find the nth planet from the Sun
nth_planet(N, Name) :-
    planet(Name, N, _, _).
