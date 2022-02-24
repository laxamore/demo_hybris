package com.demo.storefront.controllers.pages;

import com.demo.core.product.service.DemoProductService;
import com.demo.core.testimony.service.DemoTestimonyService;
import de.hybris.platform.acceleratorstorefrontcommons.controllers.pages.AbstractPageController;
import de.hybris.platform.catalog.enums.ArticleApprovalStatus;
import de.hybris.platform.cms2.exceptions.CMSItemNotFoundException;
import de.hybris.platform.cms2.model.pages.ContentPageModel;
import de.hybris.platform.core.model.product.ProductModel;
import de.hybris.platform.product.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

@Controller
@RequestMapping("/testimony")
public class TestimonyPageController extends AbstractPageController {

    @Resource
    DemoTestimonyService demoTestimonyService;

    private static final String TESTIMONY_PAGE = "testimonyPage";

    @RequestMapping(method = RequestMethod.GET)
    public String getContentPage(final Model model) throws CMSItemNotFoundException
    {
        final ContentPageModel testimony_page = getContentPageForLabelOrId(TESTIMONY_PAGE);
        storeCmsPageInModel(model, testimony_page);
        setUpMetaDataForContentPage(model, testimony_page);

//        get all data testimony
        model.addAttribute("testimonyList", demoTestimonyService.getAllTestimony());

        return getViewForPage(model);
    }
}
