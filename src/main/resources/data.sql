INSERT INTO recipe (id, description, prep_time, cook_time, servings, source, url, directions)
VALUES (1, 'Perfect Guacamole', 10, 0, 4, 'www.SimplyRecipes.com',
        'https://www.simplyrecipes.com/recipes/perfect_guacamole/',
        '<ol>' ||
            '<li>' ||
                '<h3>Cut the avocado:</h3>' ||
                '<p>Cut the avocados in half. Remove the pit. Score the inside of the avocado with a blunt knife ' ||
                'and scoop out the flesh with a spoon. Place in a bowl.</p>' ||
            '</li>' ||
            '<li>' ||
                '<h3>Mash the avocado flesh:</h3>' ||
                '<p>Using a fork, roughly mash the avocado. (Don''t overdo it! ' ||
                'The guacamole should be a little chunky.)</p>' ||
            '</li>' ||
            '<li>' ||
                '<h3>Add remaining ingredients to taste:</h3>' ||
                '<p>Sprinkle with salt and lime (or lemon) juice. The acid in the lime juice will provide some ' ||
                'balance to the richness of the avocado and will help delay the avocados from turning brown.</p>' ||
                '<p>Add the chopped onion, cilantro, black pepper, and chilis. Chili peppers vary individually in ' ||
                'their spiciness. So, start with a half of one chili pepper and add more to the guacamole to your ' ||
                'desired degree of heat.</p>' ||
                '<p>Remember that much of this is done to taste because of the variability in the fresh ' ||
                'ingredients. Start with this recipe and adjust to your taste.</p>'
            '</li>' ||
            '<li>' ||
                '<h3>Serve immediately:</h3>' ||
                '<p>If making a few hours ahead, place plastic wrap on the surface of the guacamole and press down ' ||
                'to cover it to prevent air reaching it. (The oxygen in the air causes oxidation which will turn ' ||
                'the guacamole brown.)</p>' ||
                '<p>Garnish with slices of red radish or jigama strips. Serve with your choice of store-bought ' ||
                'tortilla chips or make your own homemade tortilla chips.</p>' ||
                '<p>Refrigerate leftover guacamole up to 3 days.</p>' ||
                '<p><strong>Note:</strong> Chilling tomatoes hurts their flavor. So, if you want to add chopped ' ||
                'tomato to your guacamole, add it just before serving.</p>' ||
            '</li>' ||
        '</ol>');

-- INSERT INTO recipe (id, description, prepTime, cookTime, servings, source, url, directions)
-- VALUES (2, 'Spicy Grilled Chicken Tacos', ?, ?, ?, ?, ?, ?);

INSERT INTO category (id, description) VALUES (1, 'American');
INSERT INTO category (id, description) VALUES (2, 'Italian');
INSERT INTO category (id, description) VALUES (3, 'Mexican');
INSERT INTO category (id, description) VALUES (4, 'Fast Food');
INSERT INTO unit_of_measure (id, description) VALUES (1, 'teaspoon');
INSERT INTO unit_of_measure (id, description) VALUES (2, 'tablespoon');
INSERT INTO unit_of_measure (id, description) VALUES (3, 'cup');
INSERT INTO unit_of_measure (id, description) VALUES (4, 'pinch');
INSERT INTO unit_of_measure (id, description) VALUES (5, 'dash');
INSERT INTO unit_of_measure (id, description) VALUES (6, 'ounce');
INSERT INTO unit_of_measure (id, description) VALUES (7, '');

INSERT INTO ingredient (id, amount, uom_id, description, recipe_id)
    VALUES (1, 2, 7, 'ripe avocados', 1);
INSERT INTO ingredient (id, amount, uom_id, description, recipe_id)
    VALUES (2, 0.25, 1, 'salt, plus more to taste', 1);
INSERT INTO ingredient (id, amount, uom_id, description, recipe_id)
    VALUES (3, 1, 2, 'fresh lime or lemon juice', 1);
INSERT INTO ingredient (id, amount, uom_id, description, recipe_id)
    VALUES (4, 3, 2, 'minced red onion or thinly sliced green onion', 1);
INSERT INTO ingredient (id, amount, uom_id, description, recipe_id)
    VALUES (5, 2, 7, 'serrano (or jalapeño) chilis, stems and seeds removed, minced', 1);
INSERT INTO ingredient (id, amount, uom_id, description, recipe_id)
    VALUES (6, 2, 2, 'cilantro (leaves and tender stems), finely chopped', 1);
INSERT INTO ingredient (id, amount, uom_id, description, recipe_id)
    VALUES (7, 1, 4, 'freshly ground black pepper', 1);
INSERT INTO ingredient (id, amount, uom_id, description, recipe_id)
    VALUES (8, 0.5, 7, 'ripe tomato, chopped (optional)', 1);
