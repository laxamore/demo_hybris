<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/responsive/product" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="action" tagdir="/WEB-INF/tags/responsive/action" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ attribute name="demoVariantProduct" required="true" type="com.demo.facades.product.data.DemoVariantProductData" %>

    <div id="flex-cross-parent">
        <div class="row flex-cross-child">
            <c:forEach items="${demoVariantProduct}" var="variantProduct">
                <a href="${variantProduct.getId()}" class="cross-listing-details">
                    <ycommerce:testId code="searchPage_productName_link_${variantProduct.picture}">
                        ${ycommerce:sanitizeHTML(variantProduct.picture)}
                    </ycommerce:testId>
                    <img src="${variantProduct.getPicture().getURL()}" /><br>
                    <ycommerce:testId code="searchPage_productName_link_${variantProduct.getName()}">
                        ${ycommerce:sanitizeHTML(variantProduct.getName())}
                    </ycommerce:testId>
                    <h5 class="cross-name">${variantProduct.getName()}</h5>
                    <div class="cross-size-desc">
                        <ycommerce:testId code="searchPage_productName_link_${variantProduct.size}">
                            ${ycommerce:sanitizeHTML(variantProduct.size)}
                        </ycommerce:testId>
                        ${variantProduct.getSize()} cm<br>
                        <ycommerce:testId code="searchPage_productName_link_${variantProduct.desc}">
                            ${ycommerce:sanitizeHTML(variantProduct.desc)}
                        </ycommerce:testId>
                        ${variantProduct.getDesc()}<br>
                    </div>
                    <div class="cross-price">
                        <ycommerce:testId code="searchPage_productName_link_${variantProduct.price}">
                             ${ycommerce:sanitizeHTML(variantProduct.price)}
                        </ycommerce:testId>
                        Rp.${variantProduct.getPrice()}
                    </div>
                </a><br>
            </c:forEach>
        </div>
        <a type="button" class="row flex-cross-child-button" href="https://localhost:9002/demostorefront/demo/id//c/catalog">Lihat semua produk</a>
    </div>