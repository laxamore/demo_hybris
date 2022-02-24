<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>
<%@ taglib prefix="storepickup" tagdir="/WEB-INF/tags/responsive/storepickup" %>

<template:demoPage pageTitle="${pageTitle}">
    <div class="demo-main">
        <div class="row demo-content" style="max-width: 1440px;">
            <cms:pageSlot position="Section1" var="feature" element="div" class="product-grid-section1-slot">
                <cms:component component="${feature}" element="div"
                               class="catalog-header"/>
            </cms:pageSlot>
            <div class="col-xs-3">
                <cms:pageSlot position="ProductLeftRefinements" var="feature" element="div"
                              class="product-grid-left-refinements-slot">
                    <cms:component component="${feature}" element="div"
                                   class="yComponentWrapper product-grid-left-refinements-component"/>
                </cms:pageSlot>
            </div>
            <div class="col-sm-12 col-md-9">
                <cms:pageSlot position="ProductGrid" var="feature" element="div" class="product-grid-right-result-slot">
                    <cms:component component="${feature}" element="div"
                                   class="product__list--wrapper yComponentWrapper product-grid-right-result-component"/>
                </cms:pageSlot>
            </div>
        </div>
        <storepickup:pickupStorePopup/>
    </div>
</template:demoPage>