import java.util.logging.Level;
import java.util.logging.Logger;

public class Action {
    // Create a logger instance
    private static final Logger LOGGER = Logger.getLogger(Action.class.getName());

    public static void main(String[] args) {
        // Log an info message
        LOGGER.log(Level.INFO, "Program started");

        System.out.println("Hello, World!");

        // Log another info message
        LOGGER.log(Level.INFO, "Program finished");
    }
}
