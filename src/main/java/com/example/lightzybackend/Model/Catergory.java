package com.example.lightzybackend.Model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Catergory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer catergoryId;
    private String catergoryName;
    private String imageUrl;

    public Catergory(String catergoryName, String imageUrl) {
        this.catergoryName = catergoryName;
        this.imageUrl = imageUrl;
    }
    public Catergory(String catergoryName) {
        this.catergoryName = catergoryName;
    }
}
