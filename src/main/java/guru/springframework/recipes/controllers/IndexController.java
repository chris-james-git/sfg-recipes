package guru.springframework.recipes.controllers;

import guru.springframework.recipes.domain.Category;
import guru.springframework.recipes.domain.UnitOfMeasure;
import guru.springframework.recipes.repositories.CategoryRepository;
import guru.springframework.recipes.repositories.UnitOfMeasureRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Optional;

@Controller
public class IndexController {

    private CategoryRepository categoryRepository;
    private UnitOfMeasureRepository unitOfMeasureRepository;

    public IndexController(CategoryRepository categoryRepository, UnitOfMeasureRepository unitOfMeasureRepository) {
        this.categoryRepository = categoryRepository;
        this.unitOfMeasureRepository = unitOfMeasureRepository;
    }

    @RequestMapping({"", "/", "/index", "/index.html"})
    public String getIndexPage() {

        Category category = categoryRepository.findByDescription("American").orElseThrow();
        UnitOfMeasure unitOfMeasure = unitOfMeasureRepository.findByDescription("teaspoon").orElseThrow();

        System.out.println("Cat Id is: " + category.getId());
        System.out.println("UOM Id is: " + unitOfMeasure.getId());

        return "index";
    }
}
