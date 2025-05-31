% Facts: fruit(Name, Color)
fruit(apple, red).
fruit(banana, yellow).
fruit(grape, purple).
fruit(orange, orange).
fruit(lemon, yellow).
fruit(kiwi, brown).
fruit(strawberry, red).
fruit(watermelon, green).
fruit(blueberry, blue).

% Rule to find a fruit of a given color
find_fruit(Color, Fruit) :-
    fruit(Fruit, Color).

% Query Examples:
% ?- find_fruit(yellow, F).
% ?- fruit(F, red).
