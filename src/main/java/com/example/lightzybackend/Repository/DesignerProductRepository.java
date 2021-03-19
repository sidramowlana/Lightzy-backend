package com.example.lightzybackend.Repository;


import com.example.lightzybackend.Model.DesignerProduct;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DesignerProductRepository extends JpaRepository<DesignerProduct, Integer> {
    DesignerProduct findByDesignerProductName(String designerProductName);
}