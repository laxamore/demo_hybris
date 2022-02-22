<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags" %>
<%@ taglib prefix="format" tagdir="/WEB-INF/tags/shared/format" %>

<div>
    <div class="demo-cart-checkout-note">
        <p>
            Catatan Pembelian
        </p>
        <textarea></textarea>
    </div>
    <div class="demo-cart-order-total">
        <div>
            <spring:theme code="basket.page.totals.total"/>
        </div>
        <div>
            <ycommerce:testId code="cart_totalPrice_label">
                <format:price priceData="${cartData.totalPrice}"/>
            </ycommerce:testId>
        </div>
    </div>
</div>
