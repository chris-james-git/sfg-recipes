package guru.springframework.recipes.bootstrap;

import guru.springframework.recipes.domain.Category;
import guru.springframework.recipes.domain.Difficulty;
import guru.springframework.recipes.domain.Ingredient;
import guru.springframework.recipes.domain.Notes;
import guru.springframework.recipes.domain.Recipe;
import guru.springframework.recipes.domain.UnitOfMeasure;
import guru.springframework.recipes.repositories.CategoryRepository;
import guru.springframework.recipes.repositories.RecipeRepository;
import guru.springframework.recipes.repositories.UnitOfMeasureRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;
import java.util.Set;

@Component
public class DataLoader implements CommandLineRunner {

    private final RecipeRepository recipeRepository;
    private final CategoryRepository categoryRepository;
    private final UnitOfMeasureRepository unitOfMeasureRepository;

    public DataLoader(RecipeRepository recipeRepository, CategoryRepository categoryRepository,
                      UnitOfMeasureRepository unitOfMeasureRepository) {
        this.recipeRepository = recipeRepository;
        this.categoryRepository = categoryRepository;
        this.unitOfMeasureRepository = unitOfMeasureRepository;
    }

    @Override
    public void run(String... args) throws Exception {

        bootstrapPerfectGuacamoleRecipe();
        bootstrapSpicyGrilledChickenTacosRecipe();
    }

    private void bootstrapSpicyGrilledChickenTacosRecipe() {
        UnitOfMeasure teaspoon = unitOfMeasureRepository.findByDescription("teaspoon").orElseThrow();
        UnitOfMeasure tablespoon = unitOfMeasureRepository.findByDescription("tablespoon").orElseThrow();
        UnitOfMeasure cup = unitOfMeasureRepository.findByDescription("cup").orElseThrow();
        UnitOfMeasure qty = unitOfMeasureRepository.findByDescription("").orElseThrow();
        UnitOfMeasure pint = unitOfMeasureRepository.findByDescription("pint").orElseThrow();

        Recipe recipe = new Recipe();
        recipe.setDescription("Spicy Grilled Chicken Tacos");
        recipe.setPrepTime(20);
        recipe.setCookTime(15);
        recipe.setServings(5);
        recipe.setSource("www.SimplyRecipes.com");
        recipe.setUrl("https://www.simplyrecipes.com/recipes/spicy_grilled_chicken_tacos/");
        recipe.setDirections(spicyGrilledChickenTacosDescription());
        recipe.setDifficulty(Difficulty.MODERATE);

        Recipe savedRecipe = recipeRepository.save(recipe);

        savedRecipe.setNotes(createNote("Spicy grilled chicken tacos! Quick marinade, then grill. Ready in " +
                "about 30 minutes. Great for a quick weeknight dinner, backyard cookouts, and tailgate parties."));

        savedRecipe.addIngredients(
                createIngredient(2, tablespoon, "ancho chili powder"),
                createIngredient(1, teaspoon, "dried oregano"),
                createIngredient(1, teaspoon, "dried cumin"),
                createIngredient(1, teaspoon, "sugar"),
                createIngredient(0.5, teaspoon, "salt"),
                createIngredient(1, qty, "clove garlic, finely chopped"),
                createIngredient(1, tablespoon, "finely grated orange zest"),
                createIngredient(3, tablespoon, "fresh-squeezed orange juice"),
                createIngredient(2, tablespoon, "olive oil"),
                createIngredient(5, qty, "skinless, boneless chicken thighs (1 1/4 pounds)"),
                createIngredient(8, qty, "small corn tortillas"),
                createIngredient(3, cup, "packed baby arugula (3 ounces)"),
                createIngredient(2, qty, "medium ripe avocados, sliced"),
                createIngredient(4, qty, "radishes, thinly sliced"),
                createIngredient(0.5, pint, "cherry tomatoes, halved"),
                createIngredient(0.25, qty, "red onion, thinly sliced"),
                createIngredient(1, qty, "roughly chopped cilantro"),
                createIngredient(0.5, cup, "sour cream thinned with 1/4 cup milk"),
                createIngredient(1, qty, "lime, cut into wedges"));

        Category mexican = categoryRepository.findByDescription("Mexican").orElseThrow();
        savedRecipe.getCategories().add(mexican);
        recipeRepository.save(savedRecipe);
    }

    private void bootstrapPerfectGuacamoleRecipe() {
        UnitOfMeasure teaspoon = unitOfMeasureRepository.findByDescription("teaspoon").orElseThrow();
        UnitOfMeasure tablespoon = unitOfMeasureRepository.findByDescription("tablespoon").orElseThrow();
        UnitOfMeasure pinch = unitOfMeasureRepository.findByDescription("pinch").orElseThrow();
        UnitOfMeasure qty = unitOfMeasureRepository.findByDescription("").orElseThrow();

        Recipe recipe = new Recipe();
        recipe.setDescription("Perfect Guacamole");
        recipe.setPrepTime(10);
        recipe.setCookTime(0);
        recipe.setServings(3);
        recipe.setSource("www.SimplyRecipes.com");
        recipe.setUrl("https://www.simplyrecipes.com/recipes/perfect_guacamole/");
        recipe.setDirections(perfectGuacamoleDescription());
        recipe.setDifficulty(Difficulty.EASY);

        Recipe savedRecipe = recipeRepository.save(recipe);

        savedRecipe.setNotes(createNote("The best guacamole keeps it simple: just ripe avocados, salt, " +
                "a squeeze of lime, onions, chilis, cilantro, and some chopped tomato. Serve it as a dip at your " +
                "next party or spoon it on top of tacos for an easy dinner upgrade."));

        savedRecipe.addIngredients(
                createIngredient(2, qty, "ripe avocados"),
                createIngredient(0.25, teaspoon, "salt, plus more to taste"),
                createIngredient(1, tablespoon, "fresh lime or lemon juice"),
                createIngredient(3, tablespoon, "minced red onion or thinly sliced green onion"),
                createIngredient(2, qty, "serrano (or jalapeño) chilis, stems and seeds removed, minced"),
                createIngredient(2, tablespoon, "cilantro (leaves and tender stems), finely chopped"),
                createIngredient(1, pinch, "freshly ground black pepper"),
                createIngredient(0.5, qty, "ripe tomato, chopped (optional)"));

        Category american = categoryRepository.findByDescription("American").orElseThrow();
        Category mexican = categoryRepository.findByDescription("Mexican").orElseThrow();
        savedRecipe.getCategories().add(american);
        savedRecipe.getCategories().add(mexican);
        recipeRepository.save(savedRecipe);
    }

    private Ingredient createIngredient(int amount, UnitOfMeasure uom, String description) {
        return createIngredient(BigDecimal.valueOf(amount), uom, description);
    }

    private Ingredient createIngredient(double amount, UnitOfMeasure uom, String description) {
        return createIngredient(BigDecimal.valueOf(amount), uom, description);
    }

    private Ingredient createIngredient(BigDecimal amount, UnitOfMeasure uom, String description) {
        Ingredient ingredient = new Ingredient();
        ingredient.setDescription(description);
        ingredient.setUom(uom);
        ingredient.setAmount(amount);
        return ingredient;
    }

    private Notes createNote(String recipeNotes) {
        Notes notes = new Notes();
        notes.setRecipeNotes(recipeNotes);
        return notes;
    }

    private static String perfectGuacamoleDescription() {
        return "<ol>" +
                "<li>" +
                "<h3>Cut the avocado:</h3>" +
                "<p>Cut the avocados in half. Remove the pit. Score the inside of the avocado with a blunt knife " +
                "and scoop out the flesh with a spoon. Place in a bowl.</p>" +
                "</li>" +
                "<li>" +
                "<h3>Mash the avocado flesh:</h3>" +
                "<p>Using a fork, roughly mash the avocado. (Don't overdo it! " +
                "The guacamole should be a little chunky.)</p>" +
                "</li>" +
                "<li>" +
                "<h3>Add remaining ingredients to taste:</h3>" +
                "<p>Sprinkle with salt and lime (or lemon) juice. The acid in the lime juice will provide some " +
                "balance to the richness of the avocado and will help delay the avocados from turning brown.</p>" +
                "<p>Add the chopped onion, cilantro, black pepper, and chilis. Chili peppers vary individually in " +
                "their spiciness. So, start with a half of one chili pepper and add more to the guacamole to your " +
                "desired degree of heat.</p>" +
                "<p>Remember that much of this is done to taste because of the variability in the fresh " +
                "ingredients. Start with this recipe and adjust to your taste.</p>" +
                "</li>" +
                "<li>" +
                "<h3>Serve immediately:</h3>" +
                "<p>If making a few hours ahead, place plastic wrap on the surface of the guacamole and press down " +
                "to cover it to prevent air reaching it. (The oxygen in the air causes oxidation which will turn " +
                "the guacamole brown.)</p>" +
                "<p>Garnish with slices of red radish or jigama strips. Serve with your choice of store-bought " +
                "tortilla chips or make your own homemade tortilla chips.</p>" +
                "<p>Refrigerate leftover guacamole up to 3 days.</p>" +
                "<p><strong>Note:</strong> Chilling tomatoes hurts their flavor. So, if you want to add chopped " +
                "tomato to your guacamole, add it just before serving.</p>" +
                "</li>" +
                "</ol>";
    }

    private static String spicyGrilledChickenTacosDescription() {
        return "<ol>" +
                "<li>" +
                "<h3>Prepare a gas or charcoal grill for medium-high, direct heat</h3>" +
                "</li>" +
                "<li>" +
                "<h3>Make the marinade and coat the chicken:</h3>" +
                "<p>In a large bowl, stir together the chili powder, oregano, cumin, sugar, salt, garlic and " +
                "orange zest. Stir in the orange juice and olive oil to make a loose paste. Add the chicken to " +
                "the bowl and toss to coat all over.</p>" +
                "<p>Set aside to marinate while the grill heats and you prepare the rest of the toppings.</p>" +
                "</li>" +
                "<li>" +
                "<h3>Grill the chicken:</h3>" +
                "<p>Grill the chicken for 3 to 4 minutes per side, or until a thermometer inserted into the " +
                "thickest part of the meat registers 165F. Transfer to a plate and rest for 5 minutes.</p>" +
                "</li>" +
                "<li>" +
                "<h3>Warm the tortillas:</h3>" +
                "<p>Place each tortilla on the grill or on a hot, dry skillet over medium-high heat. As soon as " +
                "you see pockets of the air start to puff up in the tortilla, turn it with tongs and heat for a " +
                "few seconds on the other side.</p>" +
                "<p>Wrap warmed tortillas in a tea towel to keep them warm until serving.</p>" +
                "</li>" +
                "<li>" +
                "<h3>Assemble the tacos:</h3>" +
                "<p>Slice the chicken into strips. On each tortilla, place a small handful of arugula. Top with " +
                "chicken slices, sliced avocado, radishes, tomatoes, and onion slices. Drizzle with the thinned " +
                "sour cream. Serve with lime wedges.</p>" +
                "</li>" +
                "</ol>";
    }
}
