<%@ tag body-content="empty" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ taglib prefix="cms" tagdir="/WEB-INF/tags/responsive/template/cms" %>

<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css2?family=Open+Sans&Palmer:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic" />
<link href="https://fonts.googleapis.com/css2?family=Gideon+Roman&display=swap" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap" rel="stylesheet"/> <%--list--%>
<link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300;400;500;600;700&family=Permanent+Marker&display=swap" rel="stylesheet"/> <%--price--%>

<c:choose>
	<c:when test="${wro4jEnabled}">
		<link rel="stylesheet" type="text/css" media="all" href="${fn:escapeXml(contextPath)}/wro/all_responsive.css" />
		<link rel="stylesheet" type="text/css" media="all" href="${fn:escapeXml(contextPath)}/wro/${fn:escapeXml(themeName)}_responsive.css" />
		<link rel="stylesheet" type="text/css" media="all" href="${fn:escapeXml(contextPath)}/wro/addons_responsive.css" />
	</c:when>
	<c:otherwise>
		<%-- Theme CSS files --%>
		<link rel="stylesheet" type="text/css" media="all" href="${fn:escapeXml(themeResourcePath)}/css/style.css"/>
		<%--  AddOn Common CSS files --%>
		<c:forEach items="${addOnCommonCssPaths}" var="addOnCommonCss">
			<link rel="stylesheet" type="text/css" media="all" href="${fn:escapeXml(addOnCommonCss)}"/>
		</c:forEach>
	</c:otherwise>
</c:choose>

<%--  AddOn Theme CSS files --%>
<c:forEach items="${addOnThemeCssPaths}" var="addOnThemeCss">
	<link rel="stylesheet" type="text/css" media="all" href="${fn:escapeXml(addOnThemeCss)}"/>
</c:forEach>

<cms:previewCSS cmsPageRequestContextData="${cmsPageRequestContextData}" />
