//package ALGORITHMS_DATA_STRUCTURE.eCommerce;

public class Product {
    String productId;
    String productName;
    String category;

    public Product(String productId, String productName, String category) {
        this.productId = productId;
        this.productName = productName;
        this.category = category;
    }

    public void display() {
        System.out.println("ID: " + productId + ", Name: " + productName + ", Category: " + category);
    }
}
