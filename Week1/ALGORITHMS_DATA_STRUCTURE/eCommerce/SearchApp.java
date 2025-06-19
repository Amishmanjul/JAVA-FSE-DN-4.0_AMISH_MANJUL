public class SearchApp {
    public static void main(String[] args) {
        Product[] products = {
            new Product("P001", "Laptop", "Electronics"),
            new Product("P002", "Mouse", "Accessories"),
            new Product("P003", "Keyboard", "Accessories"),
            new Product("P004", "Monitor", "Electronics")
        };

        int index = LinearSearch.search(products, "Mouse");
        if (index != -1) {
            System.out.println("Found (Linear):");
            products[index].display();
        } else {
            System.out.println("Not found (Linear)");
        }

        BinarySearch.sortProducts(products);
        index = BinarySearch.search(products, "Mouse");
        if (index != -1) {
            System.out.println("Found (Binary):");
            products[index].display();
        } else {
            System.out.println("Not found (Binary)");
        }
    }
}
