<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }" />
<script>
    <%--const contextPath = '<c:out value="${root }"/>';--%>
    const root = "${root }";
    console.log('root : ' + root);

    function getContextPath() {
        const offset = location.href.indexOf(location.host) + location.host.length; //호스트주소에 시작부터 끝까지 인덱스번호를 가져옴.
        const contextPath = location.href.substring(0, location.href.indexOf('/', offset+1)); // 호스트주소 이후 '/'까지 자름.
        console.log('contextPath : ' + contextPath);
        return contextPath;
    }
</script>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>TenaDev</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-expand-md bg-dark navbar-dark">
    <a class="navbar-brand" href="${root }">TenaDev</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">

        <c:choose>
            <c:when test="${empty sessionScope.principal}">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link" href="${root }/user/loginForm">로그인</a></li>
                    <li class="nav-item"><a class="nav-link" href="${root }/user/joinForm">회원가입</a></li>
                </ul>
            </c:when>
            <c:otherwise>
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link" href="${root }/board/writeForm">글쓰기</a></li>
                    <li class="nav-item"><a class="nav-link" href="${root }/board/userForm">회원정보</a></li>
                    <li class="nav-item"><a class="nav-link" href="${root }/user/logout">로그아웃</a></li>
                </ul>
            </c:otherwise>
        </c:choose>




    </div>
</nav>
<br />