package com.demo.core.testimony.dao.impl;

import com.demo.core.model.TestimonyModel;
import com.demo.core.testimony.dao.DemoTestimonyDao;
import de.hybris.platform.servicelayer.search.FlexibleSearchQuery;
import de.hybris.platform.servicelayer.search.FlexibleSearchService;
import de.hybris.platform.servicelayer.search.SearchResult;
import org.apache.commons.collections.CollectionUtils;

import javax.annotation.Resource;
import java.util.List;

public class DemoTestimonyDaoImpl implements DemoTestimonyDao {

    private static final String QUERY_DEMO_TESTIMONY = "SELECT {pk} FROM {testimony}";

    @Resource
    private FlexibleSearchService flexibleSearchService;

    @Override
    public TestimonyModel getTestimonyById(String name){

        final FlexibleSearchQuery flexibleSearchForTestimonyQuery = new FlexibleSearchQuery(QUERY_DEMO_TESTIMONY);
        final SearchResult<TestimonyModel> testimony = flexibleSearchService.search(flexibleSearchForTestimonyQuery);

        if(CollectionUtils.isNotEmpty(testimony.getResult())){
            return testimony.getResult().get(0);
        } else {
            return null;
        }
    }
    @Override
    public List<TestimonyModel> getTestimony(){

        final FlexibleSearchQuery flexibleSearchForFindTestimonyQuery = new FlexibleSearchQuery(QUERY_DEMO_TESTIMONY);
        final SearchResult<TestimonyModel> testimony = flexibleSearchService.search(flexibleSearchForFindTestimonyQuery);

        if(CollectionUtils.isNotEmpty(testimony.getResult())){
            return testimony.getResult();
        } else {
            return null;
        }
    }
}
