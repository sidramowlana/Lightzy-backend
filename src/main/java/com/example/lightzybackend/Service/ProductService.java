package com.example.lightzybackend.Service;

import com.example.lightzybackend.Model.Catergory;
import com.example.lightzybackend.Repository.CatergoryRepository;
import com.example.lightzybackend.Repository.ProductRepository;
import com.example.lightzybackend.Response.MessageResponse;
import com.example.lightzybackend.Model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;


@Service
public class ProductService {

    private ProductRepository productRepository;
    private CatergoryRepository catergoryRepository;

    @Autowired
    public ProductService(ProductRepository productRepository, CatergoryRepository catergoryRepository) {
        this.productRepository = productRepository;
        this.catergoryRepository = catergoryRepository;
    }

    public Map<String, Object> getProductPayload(Page<Product> productsList){
        Map<String, Object> products = new HashMap<>();
        products.put("products", productsList.getContent());
        products.put("totalItems", productsList.getTotalElements());
        products.put("totalPages", productsList.getTotalPages());
        products.put("CurrentPage", productsList.getNumber());
        products.put("pageDetails", productsList.getPageable());
        return products;
    }

    public Map<String, Object> getAllProductsByPagination(int pageNo, int pageSize) {
        Pageable paging = PageRequest.of(pageNo, pageSize);
        Page<Product> pagedResult = productRepository.findAll(paging);
        return getProductPayload(pagedResult);
    }

    public ResponseEntity<?> addNewProduct(Product newProduct) {
        System.out.println(newProduct);
        System.out.println(newProduct.getProductName());
        if (productRepository.existsByProductName(newProduct.getProductName())) {
            return ResponseEntity.badRequest().body(new MessageResponse("Product already found"));
        } else {
            Catergory catergory = catergoryRepository.findByCatergoryName(newProduct.getCatergory().getCatergoryName());
            System.out.println(catergory);
            Product product = new Product();
            product.setProductName(newProduct.getProductName());
            product.setDescription(newProduct.getDescription());
            product.setWeight(newProduct.getWeight());
            product.setDimension(newProduct.getDimension());
            product.setPrice(newProduct.getPrice());
            product.setImageUrl(newProduct.getImageUrl());
            product.setCatergory(catergory);
            productRepository.save(product);
            return ResponseEntity.ok().body(new MessageResponse("Product Successfully added"));
        }
    }

    public ResponseEntity<?> updateProduct(Integer productId, Product updateProduct) {
        if (productRepository.existsById(productId)) {
            Product product = productRepository.findById(productId).get();
            Catergory catergory = catergoryRepository.findById(updateProduct.getCatergory().getCatergoryId()).get();
            product.setProductName(updateProduct.getProductName());
            product.setWeight(updateProduct.getWeight());
            product.setDimension(updateProduct.getDimension());
            product.setDescription(updateProduct.getDescription());
            product.setPrice(updateProduct.getPrice());
            product.setCatergory(catergory);
            product.setImageUrl(updateProduct.getImageUrl());
            productRepository.save(product);
            System.out.println("updating good");
            return ResponseEntity.ok().body(new MessageResponse("Successfully Updated"));
        } else {
            System.out.println("updating bad");
            return ResponseEntity.badRequest().body(new MessageResponse("Couldn't update"));

        }
    }

    public void deleteProduct(Integer productId) {
        productRepository.deleteById(productId);
    }
}
