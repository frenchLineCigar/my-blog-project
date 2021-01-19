<%@ page language="java" contentType="text/html;charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ include file="../layout/header.jsp" %>

<div class="container">

    <h2>로그인</h2>
    <form autocomplete="on">
        <div class="form-group">
            <label for="username">Username</label>
            <input type="text" class="form-control" id="username" placeholder="Enter username" name="username" autofocus>
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" class="form-control" id="password" placeholder="Enter password" name="password" autocomplete="off">
        </div>

        <div class="form-group form-check">
            <label class="form-check-label">
                <input class="form-check-input" type="checkbox" name="remember"> Remember me
            </label>
        </div>
    </form>
    <button id="btn-login" class="btn btn-primary">로그인</button>

    <script type="text/javascript">
        //document.forms[0].username.focus();
        //document.forms[0].username.select();
    </script>

</div>

<script src="${root }/resources/js/user.js"></script>
<%@ include file="../layout/footer.jsp" %>