package com.example.lightzybackend.Repository;

 import com.example.lightzybackend.Model.Catergory;
 import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface CatergoryRepository extends JpaRepository<Catergory, Integer> {
//    List<Product> findByCatergoryName(String catergoryName);
    Catergory findByCatergoryName(String catergoryName);
}