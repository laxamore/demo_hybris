package com.demo.core.testimony.service;

import com.demo.facades.product.data.Testimony;

import java.util.List;

public interface DemoTestimonyService {

    Testimony getTestimonyById(String name);
    List<Testimony> getTestimony();
}
