package com.example.lightzybackend.Controller;

import com.example.lightzybackend.Model.Catergory;
import com.example.lightzybackend.Repository.CatergoryRepository;
import com.example.lightzybackend.Repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin(origins = "*")
@RequestMapping("api/catergory")
@RestController
public class CatergoryController {
    private CatergoryRepository catergoryRepository;
    private ProductRepository productRepository;

    @Autowired
    public CatergoryController(CatergoryRepository catergoryRepository,ProductRepository productRepository) {
        this.catergoryRepository = catergoryRepository;
        this.productRepository=productRepository;
    }

    @RequestMapping(value = "/allCatergory")
    public List<Catergory> getAllCatergories() {
        List<Catergory> catergoryList =catergoryRepository.findAll();
        return catergoryList;
    }

}
