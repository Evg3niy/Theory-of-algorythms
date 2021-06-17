package fit.knu.ist.ta2;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import fit.knu.ist.ta2.lab3.Lab3;
import fit.knu.ist.ta2.lab5.Lab5_2;
import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class Ta2ApplicationTests {

    @Test
    void Laba2Test() {
        fit.knu.ist.ta2.lab2.Calculate calculator = new fit.knu.ist.ta2.lab2.Calculate();

        assertTrue(Float.MAX_VALUE != calculator.lab2equation(2));
//        assertEquals(-0.071, calculator.lab2equation(0.5));
//        assertEquals(0.179, calculator.lab2equation(2));
        assertTrue(0.064 == calculator.lab2equation(2));
    }

    @Test
    void contextLoads() {
    }
  //  @Test
    /*void Laba3Test()
    {
        Lab3 lab3 = new Lab3(-5);
        assertEquals(20, lab3.GetArrayLength());
        lab3 = new Lab3(10);
        lab3.InitArray();
        assertEquals("[1, 1, 2, 3, 5, 8, 13, 21, 34, 55]", lab3.DisplayArray());
        assertEquals("3", lab3.GetNumber(4));
        assertEquals("Out of range!", lab3.GetNumber(-1));
    }*/
    
    @Test
    void Laba5Test()
    {
        Lab5_2 lab5 = new Lab5_2(12);
        lab5.InitList();
        
        assertEquals(-1, lab5.jumpSearch("123"));
        assertEquals(-1, lab5.jumpSearch("model #11"));
        lab5.SortByStringField();
        assertEquals(3, lab5.jumpSearch("model #11"));
    }
}

