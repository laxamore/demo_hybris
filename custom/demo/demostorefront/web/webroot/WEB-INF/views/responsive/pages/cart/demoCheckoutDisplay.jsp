<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="cart" tagdir="/WEB-INF/tags/responsive/cart" %>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<spring:htmlEscape defaultHtmlEscape="true"/>

<c:url value="/cart/checkout" var="checkoutUrl" scope="session"/>
<div class="demo-cart-option">
    <div class="demo-cart-option-continue">
        <button data-continue-shopping-url="c/catalog">
            <spring:theme code="cart.page.continue"/>
        </button>
    </div>

    <div class="demo-cart-option-checkout">
        <ycommerce:testId code="checkoutButton">
            <button data-checkout-url="${fn:escapeXml(checkoutUrl)}">
                <spring:theme code="checkout.checkout"/>
            </button>
        </ycommerce:testId>
    </div>
</div>