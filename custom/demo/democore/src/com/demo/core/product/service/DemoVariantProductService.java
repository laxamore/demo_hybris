package com.demo.core.product.service;

import com.demo.facades.product.data.DemoVariantProductData;
import com.demo.facades.product.data.ProductData;

import java.util.List;

public interface DemoVariantProductService {

    DemoVariantProductData getDemoVariantProductById(String name);
    List<DemoVariantProductData> getDemoVariantProduct();
    List<DemoVariantProductData> getDemoVariantProductByType(String type);
}
