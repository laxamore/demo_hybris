<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>


<cms:pageSlot position="NavigationBar" var="component">
    <c:if test="${component.uid=='HeaderNavComponent'}">
        <c:if test="${component.visible}">
            <nav>
                <ul>
                    <c:forEach items="${component.navigationNode.children}" var="childLevel1">
                        <li>
                            <c:forEach items="${childLevel1.entries}" var="childlink1">
                                <cms:component component="${childlink1.item}" evaluateRestriction="true"
                                               element="span"/>
                            </c:forEach>
                        </li>
                    </c:forEach>
                </ul>
            </nav>
        </c:if>
    </c:if>
</cms:pageSlot>
