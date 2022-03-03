<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/responsive/product" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="action" tagdir="/WEB-INF/tags/responsive/action" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ attribute name="curDemoVariantProduct" required="true" type="com.demo.facades.product.data.DemoVariantProductData" %>


<%-- <div class="product-details page-title">
	<ycommerce:testId code="productDetails_productNamePrice_label_${product.code}">
		<div class="name">${fn:escapeXml(product.name)}<span class="sku">ID</span><span class="code">${fn:escapeXml(product.code)}</span></div>
	</ycommerce:testId>
	<product:productReviewSummary product="${product}" showLinks="true"/>
</div> --%>
<div class="row" id="flex-cross-parent-above">
	<div class="col-xs-10 col-xs-push-1 col-sm-6 col-sm-push-0 col-lg-4" id="flex-cross-child-above">
		<product:productImagePanel galleryImages="${galleryImages}" />
	</div>
	<div class="clearfix hidden-sm hidden-md hidden-lg"></div>
	<div class="col-sm-6 col-lg-8">
		<div class="product-main-info">
			<div class="row">
				<div class="col-lg-6">
					<div class="product-details">
						<product:productPromotionSection product="${product}"/>
						<ycommerce:testId code="productDetails_productNamePrice_label_${product.code}"><br>
                        <h1 class="name">
                            <ycommerce:testId code="searchPage_productName_link_${curDemoVariantProduct.type}">
                                ${ycommerce:sanitizeHTML(curDemoVariantProduct.type)}
                            </ycommerce:testId>
                        </h1> <br>
                        <div>
                            <ycommerce:testId code="searchPage_productName_link_${curDemoVariantProduct.name}">
                                ${ycommerce:sanitizeHTML(curDemoVariantProduct.name)}
                            </ycommerce:testId>
                        </div><br>
                        <div>
							<product:productPricePanel product="${product}" />
							Kasur
                            <ycommerce:testId code="searchPage_productName_link_${curDemoVariantProduct.type}">
                                ${ycommerce:sanitizeHTML(curDemoVariantProduct.type)}
                            </ycommerce:testId>
							size
							<ycommerce:testId code="searchPage_productName_link_${curDemoVariantProduct.size}">
                                ${ycommerce:sanitizeHTML(curDemoVariantProduct.size)}
                            </ycommerce:testId> cm<br>
							<ycommerce:testId code="searchPage_productName_link_${curDemoVariantProduct.description}">
                                ${ycommerce:sanitizeHTML(curDemoVariantProduct.description)}
                            </ycommerce:testId><br>
					    </div>
						</ycommerce:testId>
						<div class="description">${ycommerce:sanitizeHTML(product.summary)}</div>
					</div>
				</div>

				<div class="col-sm-12 col-md-9 col-lg-6">
					<cms:pageSlot position="VariantSelector" var="component" element="div" class="page-details-variants-select">
						<cms:component component="${component}" element="div" class="yComponentWrapper page-details-variants-select-component"/>
					</cms:pageSlot>
					<div id="button-pdp">
					    <div id="flex-button-pdp">
                            <cms:pageSlot position="AddToCart" var="component" element="div" class="page-details-variants-select">
                                <cms:component component="${component}" element="div" class="yComponentWrapper page-details-add-to-cart-component1"/>
                                <cms:component component="${component}" element="div" class="yComponentWrapper page-details-add-to-cart-component2"/>
                            </cms:pageSlot>
                        </div>
                    </div>
				</div>
			</div>
		</div>

	</div>
</div>