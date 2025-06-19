public class FinancialForecast { 
    public static double futureValue(int year, double initialValue, double growthRate) {
        if (year == 0) {
            return initialValue;
        } else {
            return futureValue(year - 1, initialValue, growthRate) * (1 + growthRate);
        }
    }
 
    public static double futureValueIterative(int year, double initialValue, double growthRate) {
        double value = initialValue;
        for (int i = 1; i <= year; i++) {
            value = value * (1 + growthRate);
        }
        return value;
    }

    public static void main(String[] args) {
        double initialValue = 1000.0;   
        double growthRate = 0.05;      
        int years = 5;                  

        double resultRecursive = futureValue(years, initialValue, growthRate);
        System.out.printf("Future value (recursive) after %d years: %.2f\n", years, resultRecursive);

        double resultIterative = futureValueIterative(years, initialValue, growthRate);
        System.out.printf("Future value (iterative) after %d years: %.2f\n", years, resultIterative);
    }
}
