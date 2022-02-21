package com.demo.facades.customer.impl;

import com.demo.core.customer.impl.DemoCustomerAccountService;
import de.hybris.platform.commercefacades.customer.impl.DefaultCustomerFacade;
import de.hybris.platform.commercefacades.user.data.RegisterData;
import de.hybris.platform.commerceservices.customer.DuplicateUidException;
import de.hybris.platform.core.model.user.CustomerModel;
import org.springframework.util.Assert;

import javax.annotation.Resource;

import static de.hybris.platform.servicelayer.util.ServicesUtil.validateParameterNotNullStandardMessage;

public class DemoCustomerFacade extends DefaultCustomerFacade {
    @Resource(name = "demoCustomerAccountService")
    private DemoCustomerAccountService customerAccountService;

    @Override
    public void register(RegisterData registerData) throws DuplicateUidException {
        validateParameterNotNullStandardMessage("registerData", registerData);
        Assert.hasText(registerData.getFirstName(), "The field [FirstName] cannot be empty");
        Assert.hasText(registerData.getLastName(), "The field [LastName] cannot be empty");
        Assert.hasText(registerData.getLogin(), "The field [Login] cannot be empty");

        final CustomerModel newCustomer = getModelService().create(CustomerModel.class);
        newCustomer.setCustomerID(registerData.getId());

        setCommonPropertiesForRegister(registerData, newCustomer);
        customerAccountService.register(newCustomer, registerData.getPassword());
    }
}
