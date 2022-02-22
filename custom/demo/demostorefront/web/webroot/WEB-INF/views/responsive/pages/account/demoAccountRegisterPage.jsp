<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>

<template:master pageTitle="${pageTitle}">
    <div class="row">
        <div class="col-md-6">
            <cms:pageSlot position="RegisterContentSlot" var="feature" element="div">
                <cms:component component="${feature}" element="div"/>
            </cms:pageSlot>
        </div>
    </div>
</template:master>