package com.demo.core.product.dao;

import de.hybris.platform.core.model.product.ProductModel;

import java.util.List;

public interface DemoProductDao {

    ProductModel getProductById(String name);
    List<ProductModel> getProduct();
}
