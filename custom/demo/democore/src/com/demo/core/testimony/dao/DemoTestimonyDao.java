package com.demo.core.testimony.dao;

import com.demo.core.model.TestimonyModel;

import java.util.List;

public interface DemoTestimonyDao {
    List<TestimonyModel> getTestimonyForHomePage();
    List<TestimonyModel> getAllTestimony();
    List<List<Float>> getRatingAndReviewsTestimony();
}
