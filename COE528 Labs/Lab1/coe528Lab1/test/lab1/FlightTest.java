/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab1;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

/**
 *
 * @author Ahmad El-Gohary
 */
public class FlightTest {
    
    public FlightTest() {
    }

    /**
     * Test of Flight Constructor method, of class Flight.
     */
    @Test
    public void testConstructor() {
        Flight F = new Flight(100, 269, 1000.00," Cairo", " Toronto", " 15-May-2022 8 pm");
        F.catchException(a);
        assertFalse(caughtException() instanceof ExceptionNotToThrow);

    }
    
    @Test(expected = IllegalArgumentException.class)
    public void testInvalidConstructor(Class<IllegalArgumentException> expected){
        try{
            Flight F = new Flight(100, 269, 1000.00,"Cairo", "Toronto", " 15-May-2022 8 pm");     
        }catch(Exception ex){
            pass("Exception should be thrown");
        }
    }
       
}
