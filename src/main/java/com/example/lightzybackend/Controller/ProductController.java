package com.example.lightzybackend.Controller;

import com.example.lightzybackend.Model.DesignerProduct;
import com.example.lightzybackend.Model.Product;
import com.example.lightzybackend.Repository.CatergoryRepository;
import com.example.lightzybackend.Repository.DesignerProductRepository;
import com.example.lightzybackend.Repository.ProductRepository;
import com.example.lightzybackend.Service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.Map;

@CrossOrigin(origins = "*")
@RequestMapping("api/product/")
@RestController
public class ProductController {
    private CatergoryRepository catergoryRepository;
    private ProductRepository productRepository;
    private DesignerProductRepository designerProductRepository;
    private ProductService productService;

    @Autowired
    public ProductController(CatergoryRepository catergoryRepository, ProductRepository productRepository, DesignerProductRepository designerProductRepository,ProductService productService) {
        this.catergoryRepository = catergoryRepository;
        this.productRepository = productRepository;
        this.designerProductRepository = designerProductRepository;
        this.productService=productService;
    }

    @RequestMapping(value = "/allProducts")
    public List<Product> getAllProducts() {
        List<Product> productList = productRepository.findAll(Sort.by(Sort.Direction.DESC, "productId"));
        return productList;
    }

//    get all designerproduct
    @RequestMapping(value = "/allDesignerProducts")
    public List<DesignerProduct> getAllDesignerProducts() {
        List<DesignerProduct> designerProductList = designerProductRepository.findAll();
        return designerProductList;
    }

    //get by designer product name
    @RequestMapping(value = "/designer-product/{designerProductName}")
    public DesignerProduct getDesignerProductByName(@PathVariable String designerProductName) {
        DesignerProduct designerProduct = designerProductRepository.findByDesignerProductName(designerProductName);
        return designerProduct;
    }

    //get by product name
    @RequestMapping(value = "/product-name/{productName}")
    public Product getProductByName(@PathVariable String productName) {
        Product product = productRepository.findByProductName(productName);
        return product;
    }

    //get by product id
    @RequestMapping(value = "{productId}")
    public Product getProductById(@PathVariable Integer productId) {
        Product product = productRepository.findById(productId).get();
        return product;
    }

    @RequestMapping(value = "product-catergory/{catergoryName}")
    public List<Product> getProductByCatergory(@PathVariable String catergoryName) {
        List<Product> productList = productRepository.findByCatergoryCatergoryName(catergoryName);
        return productList;
    }

    @RequestMapping(value = "product-gallery/all")
    public ResponseEntity getAllProductsByPagination(@RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "20") int size) {
        return new ResponseEntity<Map<String, Object>>(productService.getAllProductsByPagination(page, size), HttpStatus.OK);
    }
    //admin add new product
    @PreAuthorize("hasRole('ADMIN')")
    @PostMapping(value = "add-product")
    public ResponseEntity<?> addNewProduct(@Valid @RequestBody Product newProduct ){
        return productService.addNewProduct(newProduct);
    }

    @PreAuthorize("hasRole('ADMIN')")
    @PutMapping(value="update-product/{productId}")
    public ResponseEntity<?> updateProduct(@PathVariable Integer productId, @RequestBody Product updateProduct ){
        return productService.updateProduct(productId,updateProduct);
    }

    @PreAuthorize("hasRole('ADMIN')")
    @DeleteMapping(value="delete-product/{productId}")
    public void deleteProduct(@PathVariable Integer productId ){
        productService.deleteProduct(productId);
    }
}
