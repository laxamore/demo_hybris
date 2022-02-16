<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>

<div class="demo-top-header-paragraph">
    <div class="paragraph1">
        <cms:pageSlot position="TopHeaderSlot" var="component">
            <c:if test="${component.uid=='TopHeaderLeftLogoComponent1'}">
                <cms:component component="${component}"/>
            </c:if>
        </cms:pageSlot>

        <cms:pageSlot position="TopHeaderSlot" var="component">
            <c:if test="${component.uid=='TopHeaderLeftParagraphComponent1'}">
                <cms:component component="${component}" element="span"/>
            </c:if>
        </cms:pageSlot>
    </div>

    <div class="paragraph2">
        <cms:pageSlot position="TopHeaderSlot" var="component">
            <c:if test="${component.uid=='TopHeaderLeftLogoComponent2'}">
                <cms:component component="${component}"/>
            </c:if>
        </cms:pageSlot>

        <cms:pageSlot position="TopHeaderSlot" var="component">
            <c:if test="${component.uid=='TopHeaderLeftParagraphComponent2'}">
                <cms:component component="${component}" element="span"/>
            </c:if>
        </cms:pageSlot>
    </div>
</div>

<cms:pageSlot position="TopHeaderSlot" var="component">
    <c:if test="${component.uid=='TopHeaderNavComponent'}">
        <c:if test="${component.visible}">
            <nav class="demo-top-header-nav">
                <ul>
                    <c:forEach items="${component.navigationNode.children}"
                               var="childLevel1">
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
