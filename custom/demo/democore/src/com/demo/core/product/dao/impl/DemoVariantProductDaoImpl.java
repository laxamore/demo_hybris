package com.demo.core.product.dao.impl;

import com.demo.core.model.DemoVariantProductModel;
import com.demo.core.product.dao.DemoVariantProductDao;
import de.hybris.platform.servicelayer.search.FlexibleSearchQuery;
import de.hybris.platform.servicelayer.search.FlexibleSearchService;
import de.hybris.platform.servicelayer.search.SearchResult;
import org.apache.commons.collections.CollectionUtils;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DemoVariantProductDaoImpl implements DemoVariantProductDao {

    private static final String QUERY_DEMO_PRODUCT = "SELECT {pk} FROM {DemoVariantProduct}";
    private static final String QUERY_DEMO_VARIANT_PRODUCT_BY_TYPE = "SELECT {pk} from {demovariantproduct} where {type} = ?type";

    @Resource
    private FlexibleSearchService flexibleSearchService;

    @Override
    public DemoVariantProductModel getDemoVariantProductById(String name) {

        final FlexibleSearchQuery flexibleSearchForProductQuery = new FlexibleSearchQuery(QUERY_DEMO_PRODUCT);
        final SearchResult<DemoVariantProductModel> products = flexibleSearchService.search(flexibleSearchForProductQuery);

        if (CollectionUtils.isNotEmpty(products.getResult())) {
            return products.getResult().get(0);
        } else {
            return null;
        }
    }

    @Override
    public List<DemoVariantProductModel> getDemoVariantProduct() {

        final FlexibleSearchQuery flexibleSearchForFindProductQuery = new FlexibleSearchQuery(QUERY_DEMO_PRODUCT);
        final SearchResult<DemoVariantProductModel> products = flexibleSearchService.search(flexibleSearchForFindProductQuery);

        if (CollectionUtils.isNotEmpty(products.getResult())) {
            return products.getResult();
        } else {
            return null;
        }
    }

    public List<DemoVariantProductModel> getDemoVariantProductByType(String type) {

        final FlexibleSearchQuery fQuery = new FlexibleSearchQuery(QUERY_DEMO_VARIANT_PRODUCT_BY_TYPE);

        final Map<String, Object> queryParameters = new HashMap<>();
        queryParameters.put("type", type);
        fQuery.addQueryParameters(queryParameters);
        final SearchResult<DemoVariantProductModel> result = flexibleSearchService.search(fQuery);

        return result.getResult();
    }

}
