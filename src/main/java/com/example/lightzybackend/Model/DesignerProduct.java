package com.example.lightzybackend.Model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class DesignerProduct {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer designerProductId;

    public String designerProductName;
    public String designerUserName;
    public String imageUrl;
    public String description;
    public double price;

    public DesignerProduct(String designerProductName, String designerUserName, String imageUrl, String description, double price) {
        this.designerProductName = designerProductName;
        this.designerUserName = designerUserName;
        this.imageUrl = imageUrl;
        this.description = description;
        this.price = price;
    }
}