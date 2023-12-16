package com.xerox.project.HALLOWED.BY.THY.NAME.repositories;

import com.xerox.project.HALLOWED.BY.THY.NAME.domain.product.ProductModel;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;
@Repository
public interface ProductRepository extends MongoRepository<ProductModel, String> {
}
