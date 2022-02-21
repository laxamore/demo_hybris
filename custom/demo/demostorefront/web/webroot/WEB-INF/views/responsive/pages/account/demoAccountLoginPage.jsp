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