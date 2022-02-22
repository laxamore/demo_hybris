<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>

<%@ attribute name="cartData" required="true" type="de.hybris.platform.commercefacades.order.data.CartData" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="format" tagdir="/WEB-INF/tags/shared/format" %>

<spring:htmlEscape defaultHtmlEscape="true"/>

<table class="demo-cart-table">
    <tr class="demo-cart-header">
        <th class="demo-cart-header-product">PRODUK</th>
        <th class="demo-cart-header-qty">JUMLAH</th>
        <th class="demo-cart-header-total">
            <p>TOTAL</p>
        </th>
    </tr>
    <c:forEach items="${cartData.rootGroups}" var="entryGroup" varStatus="loop">
        <tr class="demo-cart-data">
            <c:forEach items="${entryGroup.orderEntries}" var="entry">
                <c:set var="entryNumberHtml" value="${fn:escapeXml(entry.entryNumber)}"/>
                <c:set var="productCodeHtml" value="${fn:escapeXml(entry.product.code)}"/>
                <c:set var="quantityHtml" value="${fn:escapeXml(entry.quantity)}"/>
                <c:set var="actionFormEntryNumbers" value="${entryNumberHtml}"/>

                <td class="demo-cart-data-product">
                    <div class="demo-cart-product">
                        <div class="demo-cart-product-img">
                            <img src="${entry.product.images.iterator().next().getUrl()}"/>
                        </div>
                        <div class="demo-cart-product-info">
                            <p class="demo-cart-product-info-base">${entry.product.baseProduct}</p>
                            <p class="demo-cart-product-info-name">${entry.product.name}</p>
                            <p class="demo-cart-product-info-price">${entry.basePrice.formattedValue}</p>
                        </div>
                    </div>
                </td>
                <td class="demo-cart-data-qty">
                    <div class="demo-cart-qty">
                        <button class="demo-cart-qty-min">-</button>
                        <div>
                            <c:url value="/cart/update" var="cartUpdateFormAction"/>
                            <c:set var="cartDataJson"
                                   value='{"cartCode" : "${ycommerce:encodeJSON(cartData.code)}","productPostPrice":"${ycommerce:encodeJSON(entry.basePrice.value)}","productName":"${ycommerce:encodeJSON(entry.product.name)}"}'>

                            </c:set>
                            <form:form id="updateCartForm${entry.entryNumber}" action="${cartUpdateFormAction}"
                                       method="post"
                                       modelAttribute="updateQuantityForm${entry.entryNumber}"
                                       class="js-qty-form${entry.entryNumber} updateForm"
                                       data-cart="${fn:escapeXml(cartDataJson)}">
                                <input type="hidden" name="entryNumber" value="${entryNumberHtml}"/>
                                <input type="hidden" name="productCode" value="${productCodeHtml}"/>
                                <input type="hidden" name="initialQuantity" value="${quantityHtml}"/>
                                <form:label cssClass="" path="quantity"
                                            for="quantity${entry.entryNumber}"></form:label>
                                <form:input cssClass="js-update-entry-quantity-input"
                                            disabled="${not entry.updateable}" type="text" size="1" maxlength="10"
                                            id="quantity_${entry.entryNumber}" path="quantity"/>
                            </form:form>

                            <form:form id="cartEntryActionForm" action="" method="post">
                                <c:url value="/cart/entry/execute/REMOVE" var="entryActionUrl"/>
                                <div class="js-execute-entry-action-button" id="actionEntry_${entryNumberHtml}"
                                     data-entry-action-url="${fn:escapeXml(entryActionUrl)}"
                                     data-entry-action="REMOVE"
                                     data-entry-product-code="${productCodeHtml}"
                                     data-entry-initial-quantity="${quantityHtml}"
                                     data-action-entry-numbers="${fn:escapeXml(actionFormEntryNumbers)}">
                                    <a href="#">Hapus</a>
                                </div>
                            </form:form>
                        </div>
                        <button class="demo-cart-qty-plus">+</button>
                    </div>
                </td>
                <td class="demo-cart-data-total">
                    <div class="demo-cart-total">
                        <format:price priceData="${entry.totalPrice}" displayFreeForZero="true"/>
                    </div>
                </td>
            </c:forEach>
        </tr>
    </c:forEach>
</table>