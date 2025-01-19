import com.intuit.karate.junit5.Karate;

public class LoginTest {
    @Karate.Test
    Karate testExample() {
        return Karate.run("features/login").relativeTo(getClass());
    }

}
