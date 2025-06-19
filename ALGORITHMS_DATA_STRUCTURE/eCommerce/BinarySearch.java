//package ALGORITHMS_DATA_STRUCTURE.eCommerce;

import java.util.Arrays;
import java.util.Comparator;

public class BinarySearch {
    public static int search(Product[] products, String targetName) {
        int low = 0, high = products.length - 1;

        while (low <= high) {
            int mid = low + (high - low) / 2;
            int cmp = products[mid].productName.compareToIgnoreCase(targetName);
            if (cmp == 0) {
                return mid;
            } else if (cmp < 0) {
                low = mid + 1;
            } else {
                high = mid - 1;
            }
        }
        return -1;
    }

    public static void sortProducts(Product[] products) {
        Arrays.sort(products, Comparator.comparing(p -> p.productName.toLowerCase()));
    }
}
