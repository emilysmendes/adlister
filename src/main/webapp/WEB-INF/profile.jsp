<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
<%--    <jsp:include page="/WEB-INF/partials/navbar.jsp" />--%>
    <jsp:include page="/WEB-INF/partials/logout-only-navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
        <div id="user-info">
            <div class="card">
            <aside>Username: ${sessionScope.user.username}</aside>
            <aside>Email: ${sessionScope.user.email}</aside>
            </div>
            <form action="ads/update_user?id=${sessionScope.user.username}" method="GET">
                <button>Update User Info</button>
            </form>
        </div>
        <br>
        <div id="user-ads">
            <h3>Your Ads:</h3>
<%--            <div>--%>
<%--                <c:forEach var="ad" items="${ads}">--%>
<%--                    <div class="card">--%>
<%--                        <a href="ad-details.jsp?id=${ad.id}">${ad.title}</a>--%>
<%--                        <p>${ad.description}</p>--%>
<%--                    </div>--%>
<%--                    <div>--%>
<%--                        <form action="ads/delete?id=${ad.id}" method="POST">--%>
<%--                            <button>Delete</button>--%>
<%--                        </form>--%>
<%--                        <a href="ads/update?id=${ad.id}"><button>Update</button></a>--%>
<%--                    </div>--%>
<%--                </c:forEach>--%>
<%--            </div>--%>
            <div>
                <a href="ads/create"><button>Create an ad</button></a>
            </div>
            <div class="card-container">
                <c:forEach var="card" items="${ads}">
                    <jsp:include page="/WEB-INF/partials/cardPartial.jsp">
                        <jsp:param name="ad.title" value="${ad.title}" />
                        <jsp:param name="ad.description" value="${ad.description}" />
                        <jsp:param name="ad.update" value="ad update"/>
                        <jsp:param name="ad.delete" value="ad delete"/>
                    </jsp:include>
                </c:forEach>
            </div>
        </div>
        <br>
    </div>

</body>
</html>
