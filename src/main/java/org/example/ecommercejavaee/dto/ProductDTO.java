package org.example.ecommercejavaee.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class ProductDTO {
    private int product_id;

    @Override
    public String toString() {
        return "ProductDTO{" +
                "product_id=" + product_id +
                ", productName='" + productName + '\'' +
                ", productDescription='" + productDescription + '\'' +
                ", productPrice=" + productPrice +
                ", productQuantity=" + productQuantity +
                ", category_id=" + category_id +
                ", image_path='" + image_path + '\'' +
                '}';
    }

    private String productName;
    private String productDescription;
    private double productPrice;
    private int productQuantity;
    private int category_id;
    private String image_path;
}

