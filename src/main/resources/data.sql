INSERT INTO recipe (id, description, prep_time, cook_time, servings, source, url, directions)
VALUES (1, 'Perfect Guacamole', 10, 0, 3, 'www.SimplyRecipes.com',
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

INSERT INTO recipe (id, description, prep_time, cook_time, servings, source, url, directions)
VALUES (2, 'Spicy Grilled Chicken Tacos', 20, 15, 5, 'www.SimplyRecipes.com',
        'https://www.simplyrecipes.com/recipes/spicy_grilled_chicken_tacos/',
        '<ol>' ||
            '<li>' ||
                '<h3>Prepare a gas or charcoal grill for medium-high, direct heat</h3>' ||
            '</li>' ||
            '<li>' ||
                '<h3>Make the marinade and coat the chicken:</h3>' ||
                '<p>In a large bowl, stir together the chili powder, oregano, cumin, sugar, salt, garlic and ' ||
                'orange zest. Stir in the orange juice and olive oil to make a loose paste. Add the chicken to ' ||
                'the bowl and toss to coat all over.</p>' ||
                '<p>Set aside to marinate while the grill heats and you prepare the rest of the toppings.</p>' ||
            '</li>' ||
            '<li>' ||
                '<h3>Grill the chicken:</h3>' ||
                '<p>Grill the chicken for 3 to 4 minutes per side, or until a thermometer inserted into the ' ||
                'thickest part of the meat registers 165F. Transfer to a plate and rest for 5 minutes.</p>' ||
            '</li>' ||
            '<li>' ||
                '<h3>Warm the tortillas:</h3>' ||
                '<p>Place each tortilla on the grill or on a hot, dry skillet over medium-high heat. As soon as ' ||
                'you see pockets of the air start to puff up in the tortilla, turn it with tongs and heat for a ' ||
                'few seconds on the other side.</p>' ||
                '<p>Wrap warmed tortillas in a tea towel to keep them warm until serving.</p>' ||
            '</li>' ||
            '<li>' ||
                '<h3>Assemble the tacos:</h3>' ||
                '<p>Slice the chicken into strips. On each tortilla, place a small handful of arugula. Top with ' ||
                'chicken slices, sliced avocado, radishes, tomatoes, and onion slices. Drizzle with the thinned ' ||
                'sour cream. Serve with lime wedges.</p>' ||
            '</li>' ||
        '</ol>');

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
INSERT INTO unit_of_measure (id, description) VALUES (8, 'pint');

-- Perfect Guacamole Ingredients
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

-- Spicy Grilled Chicken Tacos Ingredients
INSERT INTO ingredient (id, amount, uom_id, description, recipe_id)
    VALUES(9, 2, 2, 'ancho chili powder', 2);
INSERT INTO ingredient (id, amount, uom_id, description, recipe_id)
    VALUES(10, 1, 1, 'dried oregano', 2);
INSERT INTO ingredient (id, amount, uom_id, description, recipe_id)
    VALUES(11, 1, 1, 'dried cumin', 2);
INSERT INTO ingredient (id, amount, uom_id, description, recipe_id)
    VALUES(12, 1, 1, 'sugar', 2);
INSERT INTO ingredient (id, amount, uom_id, description, recipe_id)
    VALUES(13, 0.5, 1, 'salt', 2);
INSERT INTO ingredient (id, amount, uom_id, description, recipe_id)
    VALUES(14, 1, 7, 'clove garlic, finely chopped', 2);
INSERT INTO ingredient (id, amount, uom_id, description, recipe_id)
    VALUES(15, 1, 2, 'finely grated orange zest', 2);
INSERT INTO ingredient (id, amount, uom_id, description, recipe_id)
    VALUES(16, 3, 2, 'fresh-squeezed orange juice', 2);
INSERT INTO ingredient (id, amount, uom_id, description, recipe_id)
    VALUES(17, 2, 2, 'olive oil', 2);
INSERT INTO ingredient (id, amount, uom_id, description, recipe_id)
    VALUES(18, 5, 7, 'skinless, boneless chicken thighs (1 1/4 pounds)', 2);
INSERT INTO ingredient (id, amount, uom_id, description, recipe_id)
    VALUES(19, 8, 7, 'small corn tortillas', 2);
INSERT INTO ingredient (id, amount, uom_id, description, recipe_id)
    VALUES(20, 3, 3, 'packed baby arugula (3 ounces)', 2);
INSERT INTO ingredient (id, amount, uom_id, description, recipe_id)
    VALUES(21, 2, 7, 'medium ripe avocados, sliced', 2);
INSERT INTO ingredient (id, amount, uom_id, description, recipe_id)
    VALUES(22, 4, 7, 'radishes, thinly sliced', 2);
INSERT INTO ingredient (id, amount, uom_id, description, recipe_id)
    VALUES(23, 0.5, 8, 'cherry tomatoes, halved', 2);
INSERT INTO ingredient (id, amount, uom_id, description, recipe_id)
    VALUES(24, 0.25, 7, 'red onion, thinly sliced', 2);
INSERT INTO ingredient (id, amount, uom_id, description, recipe_id)
    VALUES(25, 1, 7, 'roughly chopped cilantro', 2);
INSERT INTO ingredient (id, amount, uom_id, description, recipe_id)
    VALUES(26, 0.5, 3, 'sour cream thinned with 1/4 cup milk', 2);
INSERT INTO ingredient (id, amount, uom_id, description, recipe_id)
    VALUES(27, 1, 7, 'lime, cut into wedges', 2);

