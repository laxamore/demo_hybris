package com.demo.facades.testimony.facade;

import com.demo.facades.product.data.Testimony;

import java.util.List;

public interface DemoTestimonyFacade {

    Testimony getTestimonyById(String name);
    List<Testimony> getTestimony();
}
