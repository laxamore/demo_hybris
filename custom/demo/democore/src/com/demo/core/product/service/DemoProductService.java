package com.demo.core.product.service;

import com.demo.facades.product.data.ProductData;
import de.hybris.platform.core.model.product.ProductModel;

import java.util.List;

public interface DemoProductService {

    ProductData getProductById(String name);
    List<ProductData> getProduct();
    List<ProductModel> getProductModel();
}
