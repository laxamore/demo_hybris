package com.demo.core.product.service;

import com.demo.facades.product.data.DemoVariantProductData;
import de.hybris.platform.core.model.product.ProductModel;

import java.util.List;

public interface DemoVariantProductService {

    DemoVariantProductData getDemoVariantProductById(String name);

    List<DemoVariantProductData> getDemoVariantProduct();

    List<DemoVariantProductData> getDemoVariantProductByType(String type);

    List<ProductModel> getProductModel();
}
