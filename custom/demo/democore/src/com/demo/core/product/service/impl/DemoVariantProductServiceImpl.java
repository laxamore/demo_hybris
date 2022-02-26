package com.demo.core.product.service.impl;

import com.demo.core.model.DemoVariantProductModel;
import com.demo.core.product.dao.DemoVariantProductDao;
import com.demo.core.product.service.DemoVariantProductService;
import com.demo.facades.product.data.DemoVariantProductData;
import de.hybris.platform.core.model.product.ProductModel;
import de.hybris.platform.servicelayer.dto.converter.Converter;


import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

public class DemoVariantProductServiceImpl implements DemoVariantProductService {

    @Resource(name = "demoVariantProductDao")
    private DemoVariantProductDao demoVariantProductDao;

    @Resource(name = "demoVariantProductConverter")
    private Converter<DemoVariantProductModel, DemoVariantProductData> demoVariantProductPopulator;

    @Override
    public DemoVariantProductData getDemoVariantProductById(String name) {
        DemoVariantProductModel productModel = demoVariantProductDao.getDemoVariantProductById(name);

        if (null != productModel) {
            DemoVariantProductData productData = new DemoVariantProductData();
            productData = demoVariantProductPopulator.convert(productModel, productData);

            return productData;
        } else {
            return null;
        }
    }

    @Override
    public List<DemoVariantProductData> getDemoVariantProduct() {
        DemoVariantProductModel productModel = (DemoVariantProductModel) demoVariantProductDao.getDemoVariantProduct();

        if (null != productModel) {
            DemoVariantProductData productData = new DemoVariantProductData();
            productData = demoVariantProductPopulator.convert(productModel, productData);

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
                tempProductData = demoVariantProductPopulator.convert(e, tempProductData);

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
