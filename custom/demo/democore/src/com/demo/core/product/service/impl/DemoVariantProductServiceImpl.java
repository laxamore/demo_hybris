package com.demo.core.product.service.impl;

import com.demo.core.model.DemoVariantProductModel;
import com.demo.core.product.dao.DemoVariantProductDao;
import com.demo.core.product.service.DemoVariantProductService;
import com.demo.facades.product.data.DemoVariantProductData;
import de.hybris.platform.core.model.product.ProductModel;


import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class DemoVariantProductServiceImpl implements DemoVariantProductService {

    @Resource(name = "demoVariantProductDao")
    private DemoVariantProductDao demoVariantProductDao;

    @Override
    public DemoVariantProductData getDemoVariantProductById(String name) {

        DemoVariantProductModel productModel = demoVariantProductDao.getDemoVariantProductById(name);
        DemoVariantProductData productData = new DemoVariantProductData();

        if (null != productData) {
            productData.setId(productModel.getCode());
            productData.setName(productModel.getName());
            productData.setSize((productModel.getSize()));
            productData.setDesc(productModel.getDesc());
            productData.setType(productModel.getType());
            productData.setDescription(productModel.getDescription());
            productData.setPicture(productModel.getPicture());
            productData.setPrice(BigDecimal.valueOf(productModel.getOwnEurope1Prices().iterator().next().getPrice()).toString());
            return productData;
        } else {
            return null;
        }
    }

    @Override
    public List<DemoVariantProductData> getDemoVariantProduct() {
        DemoVariantProductModel productModel = (DemoVariantProductModel) demoVariantProductDao.getDemoVariantProduct();
        DemoVariantProductData productData = new DemoVariantProductData();

        if (null != productModel) {
            productData.setId(productModel.getCode());
            productData.setName(productModel.getName());
            productData.setSize((productModel.getSize()));
            productData.setDesc(productModel.getDesc());
            productData.setType(productModel.getType());
            productData.setDescription(productModel.getDescription());
            productData.setPicture(productModel.getPicture());
            productData.setPrice(BigDecimal.valueOf(productModel.getOwnEurope1Prices().iterator().next().getPrice()).toString());
            return (List<DemoVariantProductData>) productData;
        } else {
            return null;
        }
    }

    public List<DemoVariantProductData> getDemoVariantProductByType(String type) {
        List<DemoVariantProductModel> productModel = demoVariantProductDao.getDemoVariantProductByType(type);
        List<DemoVariantProductData> productData = new ArrayList<DemoVariantProductData>();

        if (null != productModel) {
            for (DemoVariantProductModel e : productModel) {
                DemoVariantProductData tempProductData = new DemoVariantProductData();
                tempProductData.setId(e.getCode());
                tempProductData.setSize(e.getSize());
                tempProductData.setDesc(e.getDesc());
                tempProductData.setType(e.getType());
                tempProductData.setName(e.getName());
                tempProductData.setDescription(e.getDescription());
                tempProductData.setPicture(e.getPicture());
                tempProductData.setPrice(BigDecimal.valueOf(e.getOwnEurope1Prices().iterator().next().getPrice()).toString());
                productData.add(tempProductData);
            }
            return productData;
        } else {
            return null;
        }
    }

    @Override
    public List<ProductModel> getProductModel() {
        List<ProductModel> productModel = demoVariantProductDao.getProduct();

        if (productModel != null) {
            return productModel;
        } else {
            return null;
        }
    }
}
