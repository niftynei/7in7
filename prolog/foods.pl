food_type(lamb, meat).
food_type(chicken, meat).
food_type(sausage, meat).
food_type(beef, meat).
food_type(broccoli, vegetable).
food_type(cauliflower, vegetable).
food_type(cumin, spices).
food_type(salt, basics).
food_type(flour, basics).
food_type(bacon, pork).
food_type(pork, meat).
food_type(spinach, vegetable).
food_type(collard_greens, vegetable).
food_type(onion, vegetable).
food_type(green_onion, vegetable).
food_type(milk, dairy).
food_type(yogurt, milk).
food_type(proscuitto, pork). 

recipe(sausage, lamb, broccoli).
recipe(cumin, bacon, collard_greens, salt).
recipe(green_onion,flour,beef).

vegetarian(X) :- \+food_category(X, meat).
vegan(X) :- vegetarian(X), \+food_category(X, dairy).

food_category(X, Y) :- food_type(X,Y).
food_category(X, Y) :- food_type(X,Z), food_category(Z, Y).
 
