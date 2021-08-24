package guru.springframework.recipes.repositories;

import guru.springframework.recipes.domain.Ingredient;
import guru.springframework.recipes.domain.Recipe;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface IngredientRepository extends CrudRepository<Ingredient, Long> {

    List<Ingredient> findAllByRecipe(Recipe recipe);
}
