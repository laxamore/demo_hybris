<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>

<template:demoPage pageTitle="${pageTitle}">
    <cms:pageSlot position="Testimony" var="feature" element="div">
        <cms:component component="${feature}" element="div"/>
    </cms:pageSlot>
</template:demoPage>
