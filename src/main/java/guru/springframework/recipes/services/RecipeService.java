package guru.springframework.recipes.services;

import guru.springframework.recipes.domain.Recipe;

import java.util.List;

public interface RecipeService {

    List<Recipe> findAll();
}
