<%--
  Created by IntelliJ IDEA.
  User: Smith
  Date: 07.11.2016
  Time: 9:15
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="true" %>
<html>
<head>
    <title>Авторизация</title>
</head>
<body>
<div id="login-box" class="container">
    <div class="row vertical-offset-100">
        <div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Войдите</h3>
                </div>
                <div class="panel-body">
                    <form accept-charset="UTF-8" role="form" id='loginForm' name='loginForm'
                          action="<c:url value='/login' />" method='POST'>
                        <fieldset>
                            <div class="form-group <c:if test="${not empty error}">has-error</c:if>">
                                <input class="form-control" placeholder="Логин" name="username" type="text"
                                       required="" autofocus="">
                            </div>
                            <div class="form-group <c:if test="${not empty error}">has-error</c:if>">
                                <input class="form-control" placeholder="Пароль" name="password" type="password"
                                       value="" required="">
                            </div>
                            <button type="submit" class="btn btn-success btn-block">Войти</button>
                            <button type="reset" class="btn btn-default btn-block">Сбросить</button>
                        </fieldset>
                    </form>
                </div>
                <c:if test="${not empty error}">
                    <div class="panel-footer">
                        <div id="loginError">${error}</div>
                    </div>
                </c:if>
                <c:if test="${not empty msg}">
                    <div class="panel-footer">
                        <div id="loginMsg">${msg}</div>
                    </div>
                </c:if>
            </div>
        </div>
    </div>
</div>
</body>
</html>
