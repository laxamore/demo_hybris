package com.demo.facades.product.facade;

import com.demo.facades.product.data.DemoVariantProductData;
import com.demo.facades.product.data.ProductData;

import java.util.List;

public interface DemoVariantProductFacade {

    DemoVariantProductData getDemoVariantProductById(String name);
    List<DemoVariantProductData> getDemoVariantProduct();
    List<DemoVariantProductData> getDemoVariantProductByType(String type);
}
