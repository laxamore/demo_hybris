package com.demo.storefront.forms.validation;

import com.demo.storefront.forms.DemoRegisterForm;
import de.hybris.platform.acceleratorstorefrontcommons.forms.validation.RegistrationValidator;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;

@Component("demoRegistrationValidator")
public class DemoRegistrationValidation extends RegistrationValidator {
    @Override
    public void validate(final Object object, final Errors errors) {
        final DemoRegisterForm registerForm = (DemoRegisterForm) object;
        final String titleCode = registerForm.getTitleCode();
        final String firstName = registerForm.getFirstName();
        final String lastName = registerForm.getLastName();
        final String email = registerForm.getEmail();
        final String pwd = registerForm.getPwd();
        final String checkPwd = registerForm.getCheckPwd();
//        final boolean termsCheck = registerForm.isTermsCheck();
        final String id = registerForm.getId();

        validateTitleCode(errors, titleCode);
        validateName(errors, firstName, "firstName", "register.firstName.invalid");
        validateName(errors, lastName, "lastName", "register.lastName.invalid");

        if (StringUtils.length(firstName) + StringUtils.length(lastName) > 255) {
            errors.rejectValue("lastName", "register.name.invalid");
            errors.rejectValue("firstName", "register.name.invalid");
        }

        validateId(errors, id, "id", "register.id.invalid");
        validateEmail(errors, email);
        validatePassword(errors, pwd);
        comparePasswords(errors, pwd, checkPwd);
//        validateTermsAndConditions(errors, termsCheck);
    }

    protected void validateId(final Errors errors, final String id, final String propertyId, final String property) {
        if (StringUtils.isBlank(id)) {
            errors.rejectValue(propertyId, property);
        } else if (StringUtils.length(id) > 255) {
            errors.rejectValue(propertyId, property);
        }
    }
}
