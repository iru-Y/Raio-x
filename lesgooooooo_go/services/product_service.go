package services

import "raiox/main/services"

type ProductService struct {
	productRepository *services.ProductRepository
}

func NewProductService(productRepository *services.ProductRepository) *ProductService {
	return &ProductService{productRepository: productRepository}
}

func (s *ProductService) Post(productModel *Pr) (*product.ProductModel, error) {
	createdProduct, err := s.productRepository.Save(productModel)
	if err != nil {
		return nil, err
	}

	return createdProduct, nil
}
