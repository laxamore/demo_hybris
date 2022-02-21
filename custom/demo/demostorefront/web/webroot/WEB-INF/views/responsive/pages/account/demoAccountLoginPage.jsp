<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>

<template:master pageTitle="${pageTitle}">
    <div class="row">
        <div class="col-md-6">
            <cms:pageSlot position="LoginContentSlot" var="feature" element="div" class="login-left-content-slot">
                <cms:component component="${feature}" element="div" class="login-left-content-component"/>
            </cms:pageSlot>
        </div>
    </div>
</template:master>

<%--<template:master pageTitle="${pageTitle}">--%>
<%--    <div class="demo-login">--%>
<%--        <h5>Masuk</h5>--%>
<%--        <form action="" method="post" class="">--%>
<%--            <div class="demo-login-container">--%>
<%--                <div class="demo-login-form">--%>
<%--                    <input type="text" name="email" class="form-control" placeholder="Alamat Email"/>--%>
<%--                </div>--%>
<%--                <div class="demo-login-form">--%>
<%--                    <input type="password" name="password" class="form-control" placeholder="Kata Sandi"/>--%>
<%--                </div>--%>
<%--                <div class="demo-login-form">--%>
<%--                    <button id="login_btn_submit" class="" data-callback="onSubmit">--%>
<%--                        Masuk--%>
<%--                    </button>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </form>--%>
<%--        <div class="demo-login-register">--%>
<%--            <p>Belum memiliki akun?</p>--%>
<%--            <a href="#">Daftar Sekarang</a>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</template:master>--%>