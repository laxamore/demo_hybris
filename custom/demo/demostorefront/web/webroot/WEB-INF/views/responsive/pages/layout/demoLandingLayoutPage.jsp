<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>

<template:demoPage pageTitle="${pageTitle}">
    <div class="section-topbanner">
        <cms:pageSlot position="Banner" var="feature">
            <div class="home-banner-mySlides">
                <cms:component component="${feature}"/>
            </div>
        </cms:pageSlot>
    </div>
    <div class="section-productcarousel col-xs-12">  
        <div class="productcarousel-head">
            <cms:pageSlot position="TitleProductCarousel" var="feature">
                <cms:component component="${feature}"/>
            </cms:pageSlot>
        </div>
        <div class="col-xs-2">
        </div>
        <div class="productcarousel-body col-xs-8">
            <cms:pageSlot position="ProductCarousel" var="feature">
                <cms:component component="${feature}"/>
            </cms:pageSlot>
        </div>
    </div>
    <section class="section-unboxing">
        <div class="container">
            <h2 class="header-unboxing">UNBOXING INTHEBOX</h2>
        </div>
        <div class="container-unboxing">
            <cms:pageSlot position="UnboxingInTheBox" var="feature" element="div" class="flex" >
                <div class="unboxing">
                    <cms:component component="${feature}" />
                </div>
            </cms:pageSlot>
        </div>
    </section>

    <section class="section-testimoni">
        <cms:pageSlot position="Testimony" var="feature" element="div">
            <cms:component component="${feature}" element="div" />
        </cms:pageSlot>
    </section>

    <cms:pageSlot position="Section4" var="feature" element="div" class="row no-margin">
        <cms:component component="${feature}" element="div" class="col-xs-6 col-md-3 no-space yComponentWrapper"/>
    </cms:pageSlot>

    <cms:pageSlot position="Section5" var="feature" element="div">
        <cms:component component="${feature}" element="div" class="yComponentWrapper"/>
    </cms:pageSlot>


</template:demoPage>
