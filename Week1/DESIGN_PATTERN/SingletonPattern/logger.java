public class logger {
    private static logger instance;

    private logger() {
        System.out.println("Logger instance created.");
    }

    public static  logger getInstance() {
        if (instance == null) {
            instance = new logger();
        }
        return instance;
    }

    public void logInfo(String message) {
        System.out.println("[INFO]: " + message);
    }

    public void logWarning(String message) {
        System.out.println("[WARNING]: " + message);
    }

    public void logError(String message) {
        System.out.println("[ERROR]: " + message);
    }

    public void logDebug(String message) {
        System.out.println("[DEBUG]: " + message);
    }
}
