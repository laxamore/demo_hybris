package com.demo.core.testimony.service.impl;

import com.demo.core.model.TestimonyModel;
import com.demo.core.testimony.dao.DemoTestimonyDao;
import com.demo.core.testimony.service.DemoTestimonyService;
import com.demo.facades.product.data.Testimony;

import javax.annotation.Resource;
import java.util.List;

public class DemoTestimonyServiceImpl implements DemoTestimonyService {

    @Resource(name="demoTestimonyDao")
    private DemoTestimonyDao demoTestimonyDao;

    @Override
    public List<TestimonyModel> getTestimonyForHomePage() {
        List<TestimonyModel> testimonyModelList = demoTestimonyDao.getTestimonyForHomePage();

        if (testimonyModelList != null) {
            return testimonyModelList;
        } else {
            return null;
        }
    }

    @Override
    public List<TestimonyModel> getAllTestimony() {
        List<TestimonyModel> testimonyModelList = demoTestimonyDao.getAllTestimony();

        if (testimonyModelList != null) {
            return testimonyModelList;
        } else {
            return null;
        }
    }

    @Override
    public List<List<Float>> getRatingAndReviewsTestimony() {
        List<List<Float>> ratingAndReviews = demoTestimonyDao.getRatingAndReviewsTestimony();

        if (ratingAndReviews != null) {
            return ratingAndReviews;
        } else {
            return null;
        }
    }
}
