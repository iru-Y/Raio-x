package com.xerox.project.HALLOWED.BY.THY.NAME.controllers;

import com.xerox.project.HALLOWED.BY.THY.NAME.domain.product.ProductModel;
import com.xerox.project.HALLOWED.BY.THY.NAME.services.ProductService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = "/products")
@AllArgsConstructor
public class ProductController {
    private final ProductService productService;

    @PostMapping("/new-product")
    public ResponseEntity<ProductModel> post(@RequestBody ProductModel productDto) {
        return ResponseEntity.ok(productService.post(productDto));
    }
}
