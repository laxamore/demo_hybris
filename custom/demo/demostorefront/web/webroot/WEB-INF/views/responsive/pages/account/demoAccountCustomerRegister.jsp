<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="user" tagdir="/WEB-INF/tags/responsive/user" %>

<div class="register__section">
    <c:url value="/register/newcustomer" var="registerActionUrl"/>
    <user:demoRegister actionNameKey="register.submit"
                       action="${registerActionUrl}"/>
</div>
