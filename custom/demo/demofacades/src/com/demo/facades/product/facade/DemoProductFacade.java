package com.demo.facades.product.facade;

import com.demo.facades.product.data.ProductData;

import java.util.List;

public interface DemoProductFacade{

    ProductData getProductById(String name);
    List<ProductData> getProduct();
}
