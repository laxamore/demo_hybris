<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="user" tagdir="/WEB-INF/tags/responsive/user" %>

<div class="demo-footer">
    <div class="demo-footer-top">
        <div class="demo-footer-container">
            <cms:pageSlot position="FooterLogo1" var="feature" element="div" class="demo-footer-logo-1">
                <cms:component component="${feature}"/>
            </cms:pageSlot>

            <user:demoSubscribe/>

            <cms:pageSlot position="FooterLogo2" var="feature" element="div" class="demo-footer-logo-2">
                <cms:component component="${feature}"/>
            </cms:pageSlot>
        </div>

        <div class="demo-footer-container">
            <cms:pageSlot position="FooterNavigation" var="feature" element="div"
                          class="demo-footer-top-navigation-group">
                <c:forEach items="${feature.navigationNode.children}" var="childLevel1">
                    <div class="demo-footer-top-navigation">
                        <div class="demo-footer-top-navigation-title">${fn:escapeXml(childLevel1.title)}</div>
                        <ul class="">
                            <c:forEach items="${childLevel1.children}" var="childLevel2">
                                <c:forEach items="${childLevel2.entries}" var="childlink">
                                    <li>
                                        <cms:component component="${childlink.item}"/>
                                    </li>
                                </c:forEach>
                            </c:forEach>
                        </ul>
                    </div>
                </c:forEach>
            </cms:pageSlot>
        </div>
    </div>

    <div class="demo-footer-bottom-container">
        <div class="demo-footer-bottom">
            <div class="demo-footer-container">
                <cms:pageSlot position="FooterContact" var="feature" element="div" class="demo-footer-contact">
                    <cms:component component="${feature}"/>
                </cms:pageSlot>
            </div>

            <div class="demo-footer-container">
                <cms:pageSlot position="FooterCopyright" var="feature" element="div" class="demo-footer-copyright">
                    <cms:component component="${feature}"/>
                </cms:pageSlot>
            </div>
        </div>
    </div>
</div>
