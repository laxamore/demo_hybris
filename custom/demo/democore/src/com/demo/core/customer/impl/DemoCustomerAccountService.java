package com.demo.core.customer.impl;

import de.hybris.platform.commerceservices.customer.DuplicateUidException;
import de.hybris.platform.commerceservices.customer.impl.DefaultCustomerAccountService;
import de.hybris.platform.core.model.user.CustomerModel;

import static de.hybris.platform.servicelayer.util.ServicesUtil.validateParameterNotNullStandardMessage;

public class DemoCustomerAccountService extends DefaultCustomerAccountService {
    @Override
    protected void registerCustomer(final CustomerModel customerModel, final String password) throws DuplicateUidException {
        validateParameterNotNullStandardMessage("customerModel", customerModel);

        if (password != null) {
            getUserService().setPassword(customerModel, password, getPasswordEncoding());
        }
        internalSaveCustomer(customerModel);
    }
}
