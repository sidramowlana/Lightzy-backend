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
public class Ratings {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer ratingId;
    public int rating;
    public String description;
    public String customerName;
    public String customerLocation;

    public Ratings(int rating, String description, String customerName, String customerLocation) {
        this.rating = rating;
        this.description = description;
        this.customerName = customerName;
        this.customerLocation = customerLocation;
    }
}
