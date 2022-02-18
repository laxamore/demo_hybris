package com.demo.core.product.service.impl;

import com.demo.core.product.dao.DemoProductDao;
import com.demo.core.product.service.DemoProductService;
import com.demo.facades.product.data.ProductData;
import de.hybris.platform.core.model.product.ProductModel;

import javax.annotation.Resource;
import java.util.List;

public class DemoProductServiceImpl implements DemoProductService {

    @Resource(name="demoProductDao")
    private DemoProductDao demoProductDao;

    @Override
    public ProductData getProductById(String name){

        ProductModel productModel = demoProductDao.getProductById(name);
        ProductData productData = new ProductData();

        if(null != productData){
            productData.setName(productModel.getName());
            productData.setId(productModel.getCode());
            return productData;
        } else {
            return null;
        }
    }
    @Override
    public List<ProductData> getProduct(){
        ProductModel productModel = (ProductModel) demoProductDao.getProduct();
        ProductData productData = new ProductData();

        if(null != productModel){
            productData.setName(productModel.getName());
            productData.setId(productModel.getCode());
            return (List<ProductData>) productData;
        } else {
            return null;
        }
    }
}
