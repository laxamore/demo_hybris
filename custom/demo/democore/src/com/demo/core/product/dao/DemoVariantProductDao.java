package com.demo.core.product.dao;

import com.demo.core.model.DemoVariantProductModel;

import java.util.List;

public interface DemoVariantProductDao {

    DemoVariantProductModel getDemoVariantProductById(String name);
    List<DemoVariantProductModel> getDemoVariantProduct();
    List<DemoVariantProductModel> getDemoVariantProductByType(String type);
}
