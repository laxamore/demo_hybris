<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ attribute name="actionNameKey" required="true" type="java.lang.String" %>
<%@ attribute name="action" required="true" type="java.lang.String" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="formElement" tagdir="/WEB-INF/tags/responsive/formElement" %>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<spring:htmlEscape defaultHtmlEscape="true"/>

<div class="demo-login-register">
    <h5>Daftar</h5>
    <form:form action="${action}" method="post" modelAttribute="demoRegisterForm">
        <div class="demo-login-register-container">
            <div class="demo-login-register-form">
                <form:input cssClass="form-control" id="register.firstName" path="firstName"
                            placeholder="First Name"/>
            </div>
            <div class="demo-login-register-form">
                <form:input cssClass="form-control" id="register.lastName" path="lastName" autocomplete="off"
                            placeholder="Last Name"/>
            </div>

            <div class="demo-login-register-form">
                <form:input cssClass="form-control" id="register.id" path="id"
                            placeholder="User ID"/>
            </div>

            <div class="demo-login-register-form">
                <form:input cssClass="form-control" id="register.email" path="email"
                            placeholder="Alamat Email"/>
            </div>

            <div class="demo-login-register-form">
                <form:password cssClass="form-control password-strength" id="register.pwd" path="pwd" autocomplete="off"
                               placeholder="Password"/>
            </div>

            <div class="demo-login-register-form">
                <form:password cssClass="form-control" id="register.checkPwd" path="checkPwd" autocomplete="off"
                               placeholder="Confirm Password"/>
            </div>

            <div class="demo-login-register-form">
                <ycommerce:testId code="loginAndCheckoutButton">
                    <button type="submit" class="btn btn-primary btn-block">
                        Daftar
                    </button>
                </ycommerce:testId>
            </div>

            <div class="demo-login-register-ask">
                <p>Sudah memiliki akun?</p>
                <a href="login">Masuk</a>
            </div>
        </div>
    </form:form>
</div>