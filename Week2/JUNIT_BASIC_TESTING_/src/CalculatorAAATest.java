import static org.junit.Assert.*;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class CalculatorAAATest {

    private Calculator calculator;

    // Setup (runs before each test)
    @Before
    public void setUp() {
        calculator = new Calculator();
        System.out.println("Setup: Calculator instance created");
    }

    // Teardown (runs after each test)
    @After
    public void tearDown() {
        calculator = null;
        System.out.println("Teardown: Calculator instance cleared");
    }

    @Test
    public void testAdd() {
        // Arrange
        int a = 2;
        int b = 3;

        // Act
        int result = calculator.add(a, b);

        // Assert
        assertEquals(5, result);
    }

    @Test
    public void testMultiply() {
        // Arrange
        int a = 4;
        int b = 5;

        // Act
        int result = calculator.multiply(a, b);

        // Assert
        assertEquals(20, result);
    }

    @Test
    public void testDivide() {
        // Arrange
        int a = 10;
        int b = 2;

        // Act
        int result = calculator.divide(a, b);

        // Assert
        assertEquals(5, result);
    }

    @Test(expected = IllegalArgumentException.class)
    public void testDivideByZero() {
        // Arrange
        int a = 10;
        int b = 0;

        // Act
        calculator.divide(a, b);

        // Assert is handled by the expected exception
    }
}
