<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<jsp:include page="../layouts/layout_top.jsp" />

<script src="<spring:url value="/resources/js/pages/catalog/index.js" />"></script>

<h3>Sign In</h3>
<div class="new-site-form">
    <form action="<c:url value='j_spring_security_check' />">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        <div class="form-field mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
            <input class="mdl-textfield__input" name="username" type="email" id="email">
            <label class="mdl-textfield__label" for="email">E-mail</label>
            <span class="mdl-textfield__error">Email is invalid</span>
        </div>

        <div class="form-field mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
            <input class="mdl-textfield__input" name="password" type="password" id="password">
            <label class="mdl-textfield__label" for="password">Password</label>
        </div>

        <button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">
            Sign In
        </button>

        <a href="sign-up.html" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
            Sign Up
        </a>
    </form>
</div>

<jsp:include page="../layouts/layout_bottom.jsp" />