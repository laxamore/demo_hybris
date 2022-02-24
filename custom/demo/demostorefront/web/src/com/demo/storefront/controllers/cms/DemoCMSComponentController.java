package com.demo.storefront.controllers.cms;

import com.demo.core.jalo.DemoCMSComponent;
import com.demo.core.model.DemoCMSComponentModel;
import de.hybris.platform.acceleratorstorefrontcommons.controllers.cms.AbstractCMSComponentController;
import org.apache.commons.lang.StringUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.demo.storefront.controllers.ControllerConstants;

import javax.servlet.http.HttpServletRequest;

@Controller("DemoCMSComponentController")
@RequestMapping(value = ControllerConstants.Actions.Cms.DemoCMSComponent)
public class DemoCMSComponentController extends AbstractCMSComponentController<DemoCMSComponentModel> {

    @Override
    protected void fillModel(HttpServletRequest request, Model model, DemoCMSComponentModel component) {
        model.addAttribute("image", component.getImage());
        model.addAttribute("title", component.getTitle());
        model.addAttribute("description", component.getDescription());
    }

    @Override
    protected String getView(DemoCMSComponentModel component) {
        return ControllerConstants.Views.Cms.ComponentPrefix + StringUtils.lowerCase(getTypeCode(component));
    }
}
