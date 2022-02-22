package com.demo.core.testimony.dao.impl;

import com.demo.core.model.TestimonyModel;
import com.demo.core.testimony.dao.DemoTestimonyDao;
import de.hybris.platform.servicelayer.search.FlexibleSearchQuery;
import de.hybris.platform.servicelayer.search.FlexibleSearchService;
import de.hybris.platform.servicelayer.search.SearchResult;
import org.apache.commons.collections.CollectionUtils;

import javax.annotation.Resource;
import java.util.Arrays;
import java.util.List;

public class DemoTestimonyDaoImpl implements DemoTestimonyDao {

    private static final String QUERY_DEMO_TESTIMONY = "SELECT {pk} FROM {testimony} ORDER BY {rating}";
    private static final String QUERY_DEMO_TESTIMONY_FOR_HOMEPAGE = "SELECT {pk} FROM {testimony} ORDER BY {rating} DESC LIMIT 3";
    private static final String QUERY_DEMO_TESTIMONY_RATING_REVIEWS = "SELECT AVG({rating}) AS rating, COUNT({name}) AS reviews FROM {testimony}";


    @Resource
    private FlexibleSearchService flexibleSearchService;

//    Data For Testimony HomePage
    @Override
    public List<TestimonyModel> getTestimonyForHomePage() {
        final FlexibleSearchQuery flexibleSearchQuery = new FlexibleSearchQuery(QUERY_DEMO_TESTIMONY_FOR_HOMEPAGE);
        final SearchResult<TestimonyModel> testimonyModelSearchResult = flexibleSearchService.search(flexibleSearchQuery);

        if (CollectionUtils.isNotEmpty(testimonyModelSearchResult.getResult())) {
            return testimonyModelSearchResult.getResult();
        } else {
            return null;
        }
    }

    @Override
    public List<TestimonyModel> getAllTestimony() {
        final FlexibleSearchQuery flexibleSearchQuery = new FlexibleSearchQuery(QUERY_DEMO_TESTIMONY);
        final SearchResult<TestimonyModel> testimonyModelSearchResult = flexibleSearchService.search(flexibleSearchQuery);

        if (CollectionUtils.isNotEmpty(testimonyModelSearchResult.getResult())) {
            return testimonyModelSearchResult.getResult();
        } else {
            return null;
        }
    }

    @Override
    public List<List<Float>> getRatingAndReviewsTestimony() {
        final FlexibleSearchQuery flexibleSearchQuery = new FlexibleSearchQuery(QUERY_DEMO_TESTIMONY_RATING_REVIEWS);

        flexibleSearchQuery.setResultClassList(Arrays.asList(Float.class, Float.class));
        final SearchResult<List<Float>> ratingAndReviews = flexibleSearchService.search(flexibleSearchQuery);

        if (CollectionUtils.isNotEmpty(ratingAndReviews.getResult())) {
            return ratingAndReviews.getResult();
        } else {
            return null;
        }
    }
}
