package guru.springframework.recipes.repositories;

import guru.springframework.recipes.domain.UnitOfMeasure;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Optional;

import static org.junit.Assert.*;

// Run in the Spring context...
@RunWith(SpringRunner.class)
// ... configured only for JPA
@DataJpaTest
public class UnitOfMeasureRepositoryTestIT {

    @Autowired
    UnitOfMeasureRepository unitOfMeasureRepository;

    @Before
    public void setUp() throws Exception {
    }

    @Test
    public void findByDescriptionTeaspoon() {

        UnitOfMeasure unitOfMeasure = unitOfMeasureRepository.findByDescription("teaspoon").orElseThrow();

        assertEquals("teaspoon", unitOfMeasure.getDescription());
    }

    @Test
    public void findByDescriptionCup() {

        UnitOfMeasure unitOfMeasure = unitOfMeasureRepository.findByDescription("cup").orElseThrow();

        assertEquals("cup", unitOfMeasure.getDescription());
    }
}