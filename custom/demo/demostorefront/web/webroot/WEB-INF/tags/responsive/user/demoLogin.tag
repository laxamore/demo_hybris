<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ attribute name="actionNameKey" required="true" type="java.lang.String" %>
<%@ attribute name="action" required="true" type="java.lang.String" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="formElement" tagdir="/WEB-INF/tags/responsive/formElement" %>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags" %>

<spring:htmlEscape defaultHtmlEscape="true"/>

<div class="demo-login">
    <h5>Masuk</h5>
    <form:form action="${action}" method="post" modelAttribute="loginForm">
        <div class="demo-login-container">
            <div class="demo-login-form">
                <form:input cssClass="form-control" id="j_username" path="j_username"
                            placeholder="Alamat Email"/>
            </div>
            <div class="demo-login-form">
                <form:password cssClass="form-control" id="j_password" path="j_password" autocomplete="off"
                               placeholder="Kata Sandi"/>
            </div>

            <div class="forgotten-password">
                <ycommerce:testId code="login_forgotPassword_link">
                    <a href="#" data-link="<c:url value='/login/pw/request'/>" class="js-password-forgotten"
                       data-cbox-title="<spring:theme code="forgottenPwd.title"/>">
                        Lupa Password
                    </a>
                </ycommerce:testId>
            </div>

            <div class="demo-login-form">
                <ycommerce:testId code="loginAndCheckoutButton">
                    <button type="submit" class="btn btn-primary btn-block">
                        Masuk
                    </button>
                </ycommerce:testId>
            </div>

            <div class="demo-login-register">
                <p>Belum memiliki akun?</p>
                <a href="register">Daftar Sekarang</a>
            </div>
        </div>
    </form:form>
</div>