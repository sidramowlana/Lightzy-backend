package com.example.lightzybackend.Repository;

import com.example.lightzybackend.Model.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.*;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {
    Product findByProductName(String productName);
    List<Product> findByCatergoryCatergoryName(String catergory);
    boolean existsByProductName(String productName);
}