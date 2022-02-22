<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/responsive/product"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<template:demoPage pageTitle="${pageTitle}">
	<cms:pageSlot position="Section1" var="curDemoVariantProduct" element="div" class="productDetailsPageSection1">
		<cms:component component="${curDemoVariantProduct}" element="div" class="productDetailsPageSection1-component"/>
	</cms:pageSlot>
	<product:productDetailsPanel curDemoVariantProduct="${curDemoVariantProduct}"/>
    <div id="flex-cross-parent">
        <div class="row flex-cross-child">
            <c:forEach items="${demoVariantProduct}" var="variantProduct">
                <a href="${variantProduct.getId()}" class="cross-listing-details">
                        <img src="${variantProduct.getPicture().getURL()}" /><br>
                        <h5 class="cross-name">${variantProduct.getName()}</h5>
                        <div class="cross-size-desc">
                            ${variantProduct.getSize()} cm<br>
                            ${variantProduct.getDesc()}<br>
                        </div>
                        <div class="cross-price">
                            Rp.${variantProduct.getPrice()}
                        </div>
                </a>
                <br>
            </c:forEach>
        </div>
        <a type="button" class="row flex-cross-child-button" href="https://localhost:9002/demostorefront/demo/id//c/catalog">Lihat semua produk</a>
    </div>
	<cms:pageSlot position="CrossSelling" var="demoVariantProduct" element="div" class="productDetailsPageSectionCrossSelling">
		<cms:component component="${demoVariantProduct}" element="div" class="productDetailsPageSectionCrossSelling-component"/>
	</cms:pageSlot>
	<cms:pageSlot position="Section3" var="comp" element="div" class="productDetailsPageSection3">
		<cms:component component="${comp}" element="div" class="productDetailsPageSection3-component"/>
	</cms:pageSlot>
	<cms:pageSlot position="UpSelling" var="demoVariantProduct" element="div" class="productDetailsPageSectionUpSelling">
		<cms:component component="${demoVariantProduct}" element="div" class="productDetailsPageSectionUpSelling-component"/>
	</cms:pageSlot>
	<product:productPageTabs />
	<cms:pageSlot position="Section4" var="comp" element="div" class="productDetailsPageSection4">
		<cms:component component="${comp}" element="div" class="productDetailsPageSection4-component"/>
	</cms:pageSlot>
</template:demoPage>