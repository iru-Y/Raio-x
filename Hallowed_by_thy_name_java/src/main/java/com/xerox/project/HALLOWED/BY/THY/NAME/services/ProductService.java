package com.xerox.project.HALLOWED.BY.THY.NAME.services;

import com.xerox.project.HALLOWED.BY.THY.NAME.domain.product.ProductModel;
import com.xerox.project.HALLOWED.BY.THY.NAME.repositories.ProductRepository;
import org.springframework.stereotype.Service;
import reactor.core.publisher.Mono;

@Service
public class ProductService {
    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public Mono<ProductModel> post (ProductModel productModel){
        return productRepository.save(productModel);
    }
}
