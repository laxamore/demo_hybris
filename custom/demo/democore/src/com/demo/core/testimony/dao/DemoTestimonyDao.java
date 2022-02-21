package com.demo.core.testimony.dao;

import com.demo.core.model.TestimonyModel;

import java.util.List;

public interface DemoTestimonyDao {

    TestimonyModel getTestimonyById(String name);
    List<TestimonyModel> getTestimony();
}
