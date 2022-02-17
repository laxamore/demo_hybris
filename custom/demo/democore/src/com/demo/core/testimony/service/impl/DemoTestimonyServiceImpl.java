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
    public Testimony getTestimonyById(String name){

        TestimonyModel testimonyModel = demoTestimonyDao.getTestimonyById(name);
        Testimony testimony = new Testimony();

        if(null != testimony){
            testimony.setName(testimonyModel.getName());
            testimony.setCode(testimonyModel.getCode());
            testimony.setText(testimonyModel.getText());
            testimony.setParagraph(testimonyModel.getParagraph());
            return testimony;
        } else {
            return null;
        }
    }
    @Override
    public List<Testimony> getTestimony(){
        TestimonyModel testimonyModel = (TestimonyModel) demoTestimonyDao.getTestimony();
        Testimony testimony = new Testimony();

        if(null != testimony){
            testimony.setName(testimonyModel.getName());
            testimony.setCode(testimonyModel.getCode());
            testimony.setText(testimonyModel.getText());
            testimony.setParagraph(testimonyModel.getParagraph());
            return (List<Testimony>) testimony;
        } else {
            return null;
        }
    }
}
