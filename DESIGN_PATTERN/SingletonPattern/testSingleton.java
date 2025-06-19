public class testSingleton {
    public static void main(String[] args) {
        logger logger1 = logger.getInstance();
        logger logger2 = logger.getInstance();
        logger logger3 = logger.getInstance();

        logger1.logInfo("Application started.");
        logger2.logDebug("Debugging initialization process.");
        logger3.logWarning("Low memory warning.");
        logger1.logError("Null pointer exception occurred.");
        logger2.logInfo("User logged in.");
        logger3.logDebug("Loading dashboard components.");

        if (logger1 == logger2 && logger2 == logger3) {
            System.out.println("All logger instances are the same (Singleton confirmed).");
        } else {
            System.out.println("Logger instances are different (Singleton failed).");
        }
    }
}
