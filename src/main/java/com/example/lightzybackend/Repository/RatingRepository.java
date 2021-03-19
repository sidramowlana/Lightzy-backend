package com.example.lightzybackend.Repository;

import com.example.lightzybackend.Model.Ratings;
import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

@Repository
public interface RatingRepository extends JpaRepository<Ratings, Integer> {
}