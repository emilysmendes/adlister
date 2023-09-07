<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
        <div id="user-info">
            <div class="card">
            <aside>Username: ${sessionScope.user.username}</aside>
            <aside>Email: ${sessionScope.user.email}</aside>
            </div>
        </div>
        <div id="user-ads">
            <h3>Your Ads:</h3>
            <div></div>
        </div>
    </div>

</body>
</html>
