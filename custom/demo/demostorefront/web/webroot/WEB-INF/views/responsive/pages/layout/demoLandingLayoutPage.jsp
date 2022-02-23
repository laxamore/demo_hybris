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
        <div class="productcarousel-body">
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
            <cms:pageSlot position="UnboxingInTheBox" var="feature" element="div" class="row no-margin flex">
                <div class="unboxing">
                    <cms:component component="${feature}" element="div" class="no-space yComponentWrapper"/>
                </div>
            </cms:pageSlot>
        </div>
    </section>

    <section class="section-testimony">
        <div class="container header-testimony">
            <h2>TESTIMONI</h2>
        </div>
        <div class="container text-testimony">
            <h3>Banyak pembeli yang merasa puas dengan kualitas kasur INTHEBOX</h3>
            <h3>Kami menerima beragam komentar positif dari pembeli di seluruh Indonesia, bahkan dari kalangan artis.
                Bukan hanya pengalaman membeli kasur sping bed atau kasur busa, banyak juga yang merasa puas dengan produk INTHEBOX lainnya yang terdiri dari bantal, guling, dan sofa bed. </h3>
        </div>
        <div>
            <cms:pageSlot position="TestimonyHome" var="feature" element="div" class="row no-margin flex" >
                <div class="container">
                    <cms:component component="${feature}" element="div" class="no-space yComponentWrapper"/>
                </div>
            </cms:pageSlot>
        </div>
    </section>

    <cms:pageSlot position="Section4" var="feature" element="div" class="row no-margin">
        <cms:component component="${feature}" element="div" class="col-xs-6 col-md-3 no-space yComponentWrapper"/>
    </cms:pageSlot>

    <cms:pageSlot position="Section5" var="feature" element="div">
        <cms:component component="${feature}" element="div" class="yComponentWrapper"/>
    </cms:pageSlot>


</template:demoPage>
