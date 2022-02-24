package com.demo.facades.populators;

import de.hybris.platform.commercefacades.product.data.ProductData;
import de.hybris.platform.commercefacades.search.converters.populator.SearchResultProductPopulator;
import de.hybris.platform.commerceservices.search.resultdata.SearchResultValueData;

public class DemoSearchResultVariantProductPopulator extends SearchResultProductPopulator {

    @Override
    public void populate(final SearchResultValueData source, final ProductData target) {

        target.setType(this.<String>getValue(source, "type"));
        target.setName(this.<String>getValue(source, "name"));
//        target.setPrice(this.<String>getValue(source, "price"));
        target.setSize(this.<String>getValue(source, "size"));
        target.setDesc(this.<String>getValue(source, "desc"));
    }
}
