package service;

import model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductService implements IProductService{
    private static Map<Integer, Product> products;
    static {
        products = new HashMap<>();
        products.put(1, new Product(1,"Laptop", "3000", "abc","Acer"));
        products.put(2, new Product(2,"Bike", "5000", "cde","Yamaha"));
        products.put(3, new Product(3,"Desk", "1000", "fsd","Dsc"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id,product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public Product findByName(String name) {
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getNameProduct().contains(name)){
                return products.get(i);
            }
        }
        return null;
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }
}
