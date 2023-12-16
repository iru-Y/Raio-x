package com.xerox.project.HALLOWED.BY.THY.NAME.services;

import com.xerox.project.HALLOWED.BY.THY.NAME.domain.product.ProductModel;
import com.xerox.project.HALLOWED.BY.THY.NAME.repositories.ProductRepository;
import org.springframework.stereotype.Service;

@Service
public class ProductService {
    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public ProductModel post (ProductModel productModel){
        var product = productRepository.save(productModel);
        return product;
    }
}
