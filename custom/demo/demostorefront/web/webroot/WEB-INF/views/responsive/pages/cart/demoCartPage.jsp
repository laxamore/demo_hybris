<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>
<%@ taglib prefix="cart" tagdir="/WEB-INF/tags/responsive/cart" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags" %>

<spring:htmlEscape defaultHtmlEscape="true"/>

<template:demoPage pageTitle="${pageTitle}">
    <cart:cartValidation/>
    <cart:cartPickupValidation/>

    <div class="demo-cart">
        <cms:pageSlot position="CartTitle" var="feature">
            <cms:component component="${feature}" element="h1" class="yComponentWrapper demo-cart-title"/>
        </cms:pageSlot>

        <cms:pageSlot position="TopContent" var="feature">
            <cms:component component="${feature}" element="div" class="yComponentWrapper demo-cart-display"/>
        </cms:pageSlot>

        <cms:pageSlot position="CenterRightContentSlot" var="feature">
            <cms:component component="${feature}" element="div" class="yComponentWrapper"/>
        </cms:pageSlot>

        <cms:pageSlot position="BottomContentSlot" var="feature">
            <cms:component component="${feature}" element="div" class="yComponentWrapper"/>
        </cms:pageSlot>

        <c:if test="${empty cartData.rootGroups}">
            <cms:pageSlot position="EmptyCartMiddleContent" var="feature">
                <cms:component component="${feature}" element="div" class="yComponentWrapper content__empty"/>
            </cms:pageSlot>
        </c:if>
    </div>
</template:demoPage>
