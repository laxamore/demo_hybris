package com.demo.core.testimony.service;

import com.demo.core.model.TestimonyModel;
import com.demo.facades.product.data.Testimony;

import java.util.List;

public interface DemoTestimonyService {
    List<TestimonyModel> getTestimonyForHomePage();
    List<TestimonyModel> getAllTestimony();
    List<List<Float>> getRatingAndReviewsTestimony();
}
