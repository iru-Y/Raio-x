package com.xerox.project.HALLOWED.BY.THY.NAME.domain.product;

import lombok.Builder;

@Builder
public record ProductDto(
        String productModel,
        Double price
) {
}
