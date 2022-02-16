<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ attribute name="hideHeaderLinks" required="false" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="nav" tagdir="/WEB-INF/tags/responsive/nav" %>

<spring:htmlEscape defaultHtmlEscape="true"/>

<div class="demo-headers">
    <div class="demo-top-header">
        <div class="demo-top-header-paragraph">
            <div class="paragraph1">
                <cms:pageSlot position="TopLeftParagraph" var="component">
                    <c:if test="${component.uid=='TopHeaderLeftLogoComponent1'}">
                        <cms:component component="${component}"/>
                    </c:if>
                </cms:pageSlot>

                <cms:pageSlot position="TopLeftParagraph" var="component">
                    <c:if test="${component.uid=='TopHeaderLeftParagraphComponent1'}">
                        <cms:component component="${component}"/>
                    </c:if>
                </cms:pageSlot>
            </div>

            <div class="paragraph2">
                <cms:pageSlot position="TopLeftParagraph" var="component">
                    <c:if test="${component.uid=='TopHeaderLeftLogoComponent2'}">
                        <cms:component component="${component}"/>
                    </c:if>
                </cms:pageSlot>

                <cms:pageSlot position="TopLeftParagraph" var="component">
                    <c:if test="${component.uid=='TopHeaderLeftParagraphComponent2'}">
                        <cms:component component="${component}"/>
                    </c:if>
                </cms:pageSlot>
            </div>
        </div>

        <div class="demo-top-header-nav">
            <nav:demoTopHeaderNavigation/>
        </div>
    </div>
    <div class="demo-bottom-header">
        <div class="demo-bottom-header-content">
            <%--Website Logo--%>
            <div class="demo-web-logo">
                <cms:pageSlot position="HeaderLogo" var="logo" limit="1">
                    <cms:component component="${logo}" element="div" class="yComponentWrapper"/>
                </cms:pageSlot>
            </div>

            <%--Navbar--%>
            <div class="demo-bottom-header-nav">
                <nav:demoBottomHeaderNavigation/>
            </div>

            <%--Login--%>
            <div class="demo-bottom-header-login">
                <cms:pageSlot position="LoginLink" var="component">
                    <c:if test="${component.visible}">
                        <cms:component component="${component}"/>
                    </c:if>
                </cms:pageSlot>
            </div>

            <%--Cart--%>
            <div class="demo-bottom-header-cart">
                <cms:pageSlot position="CartLink" var="component">
                    <c:if test="${component.visible}">
                        <cms:component component="${component}"/>
                    </c:if>
                </cms:pageSlot>
            </div>
        </div>
    </div>
</div>