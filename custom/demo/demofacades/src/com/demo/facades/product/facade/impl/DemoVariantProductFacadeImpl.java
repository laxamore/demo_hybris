package com.demo.facades.product.facade.impl;

import com.demo.core.product.service.DemoVariantProductService;
import com.demo.facades.product.data.DemoVariantProductData;
import com.demo.facades.product.facade.DemoVariantProductFacade;


import javax.annotation.Resource;
import java.util.List;

public class DemoVariantProductFacadeImpl implements DemoVariantProductFacade {

    @Resource(name = "demoVariantProductService")
    private DemoVariantProductService demoVariantProductService;

    @Override
    public DemoVariantProductData getDemoVariantProductById(String name) {

        DemoVariantProductData productData = demoVariantProductService.getDemoVariantProductById(name);
        if (null != productData) {
            return productData;
        } else {
            return null;
        }
    }

    @Override
    public List<DemoVariantProductData> getDemoVariantProduct() {

        DemoVariantProductData productData = (DemoVariantProductData) demoVariantProductService.getDemoVariantProduct();
        if (null != productData) {
            return (List<DemoVariantProductData>) productData;
        } else {
            return null;
        }
    }

    @Override
    public List<DemoVariantProductData> getDemoVariantProductByType(String type) {

        List<DemoVariantProductData> productData = demoVariantProductService.getDemoVariantProductByType(type);
        if (null != productData) {
            return productData;
        } else {
            return null;
        }
    }
}
