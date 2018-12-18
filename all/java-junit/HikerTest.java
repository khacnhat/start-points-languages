import org.junit.*;

import static org.junit.Assert.*;
import static org.assertj.core.api.Assertions.assertThat;

public class HikerTest {

    @Test
    public void life_the_universe_and_everything() {
        // a simple example to get you started
        int expected = 42;
        int actual = Hiker.answer();
        // JUnit assertion - the default Java assertion library
        // https://junit.org/junit4/
        assertEquals(expected, actual);
        // assertJ assertion - fluent assertions for Java
        // http://joel-costigliola.github.io/assertj/
        assertThat(actual).isEqualTo(expected);
    }
}
