package com.demo.facades.product.populator;

import com.demo.core.model.DemoVariantProductModel;
import com.demo.facades.product.data.DemoVariantProductData;
import de.hybris.platform.converters.Populator;
import de.hybris.platform.servicelayer.dto.converter.ConversionException;

import java.math.BigDecimal;

public class DemoVariantProductPopulator implements Populator<DemoVariantProductModel, DemoVariantProductData> {

    @Override
    public void populate(DemoVariantProductModel demoVariantProductModel, DemoVariantProductData demoVariantProductData) throws ConversionException {

        if (demoVariantProductModel.getCode() != null) {
            demoVariantProductData.setId(demoVariantProductModel.getCode());
        }
        if (demoVariantProductModel.getType() != null) {
            demoVariantProductData.setType(demoVariantProductModel.getType());
        }
        if (demoVariantProductModel.getName() != null) {
            demoVariantProductData.setName(demoVariantProductModel.getName());
        }
        if (demoVariantProductModel.getSize() != null) {
            demoVariantProductData.setSize(demoVariantProductModel.getSize());
        }
        if (demoVariantProductModel.getDesc() != null) {
            demoVariantProductData.setDesc(demoVariantProductModel.getDesc());
        }
        if ((BigDecimal.valueOf(demoVariantProductModel.getOwnEurope1Prices().iterator().next().getPrice()).toString()) != null) {
            demoVariantProductData.setPrice((BigDecimal.valueOf(demoVariantProductModel.getOwnEurope1Prices().iterator().next().getPrice()).toString()));
        }
        if (demoVariantProductModel.getDescription() != null) {
            demoVariantProductData.setDescription(demoVariantProductModel.getDescription());
        }
        if (demoVariantProductModel.getPicture() != null) {
            demoVariantProductData.setPicture(demoVariantProductModel.getPicture());
        }
    }
}
