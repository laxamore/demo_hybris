package com.demo.storefront.controllers.pages;

import de.hybris.platform.acceleratorstorefrontcommons.controllers.pages.AbstractPageController;
import de.hybris.platform.cms2.exceptions.CMSItemNotFoundException;
import de.hybris.platform.cms2.model.pages.ContentPageModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/about")
public class DemoAboutController extends AbstractPageController {
    private static final String CUSTOM_PAGE = "about";

    @RequestMapping(value = CUSTOM_PAGE,method = RequestMethod.GET)
    public String getAboutPage(final Model model) throws CMSItemNotFoundException {
        final ContentPageModel aboutPageData = getContentPageForLabelOrId(CUSTOM_PAGE);
        storeCmsPageInModel(model,aboutPageData);
        setUpMetaDataForContentPage(model,aboutPageData);
        return getViewForPage(model);
    }
}

