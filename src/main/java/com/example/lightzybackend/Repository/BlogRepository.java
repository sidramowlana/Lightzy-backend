package com.example.lightzybackend.Repository;


import com.example.lightzybackend.Model.BlogPost;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BlogRepository extends JpaRepository<BlogPost, Integer> {
        }