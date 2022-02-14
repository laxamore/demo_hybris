package com.demo.facades.testimony.facade.impl;

import com.demo.core.testimony.service.DemoTestimonyService;
import com.demo.facades.product.data.Testimony;
import com.demo.facades.testimony.facade.DemoTestimonyFacade;

import javax.annotation.Resource;
import java.util.List;

public class DemoTestimonyFacadeImpl implements DemoTestimonyFacade {

    @Resource
    private DemoTestimonyService demoTestimonyService;

    @Override
    public Testimony getProductById(String name){

        Testimony testimony = demoTestimonyService.getTestimonyById(name);
        if(null != testimony){
            return testimony;
        } else {
            return null;
        }
    }
    @Override
    public List<Testimony> getProduct(){

        Testimony testimony = (Testimony) demoTestimonyService.getTestimony();
        if(null != testimony){
            return (List<Testimony>) testimony;
        } else {
            return null;
        }
    }
}
