package models

import (
	"github.com/google/uuid"
)

type ProductModel struct {
	ID string `json:"id"`
	ProductModel string `json:"product_model"`
}

func NewProductModel(productModel string) (*ProductModel, error) {
	id, err := uuid.NewRandom()
	if err != nil {
		return nil, err
	}

	return &ProductModel{
		ID:           id.String(),
		ProductModel: productModel,
	}, nil
}
