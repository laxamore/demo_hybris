package com.demo.facades.testimony.facade.impl;

import com.demo.core.testimony.service.DemoTestimonyService;
import com.demo.facades.product.data.Testimony;
import com.demo.facades.testimony.facade.DemoTestimonyFacade;

import javax.annotation.Resource;
import java.util.List;

public class DemoTestimonyFacadeImpl implements DemoTestimonyFacade {

    @Resource
    private DemoTestimonyFacade demoTestimonyFacade;

    @Override
    public Testimony getTestimonyById(String name){

        Testimony testimony = demoTestimonyFacade.getTestimonyById(name);
        if(null != testimony){
            return testimony;
        } else {
            return null;
        }
    }
    @Override
    public List<Testimony> getTestimony(){

        Testimony testimony = (Testimony) demoTestimonyFacade.getTestimony();
        if(null != testimony){
            return (List<Testimony>) testimony;
        } else {
            return null;
        }
    }
}
