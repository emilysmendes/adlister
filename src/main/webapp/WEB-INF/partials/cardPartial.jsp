<%-- cardPartial.jsp --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row">
    <div class="col">
        <div class="cards">
            <c:forEach var="ad" items="${ads}">
                <div class="card ">
                    <h5>${ad.title}</h5>
                    <a href="ads/details?id=${ad.id}">Show details</a>
                    <c:if test="${user != null}">
                        <a href="ads/update?id=${ad.id}">
                            <button>Update</button>
                        </a>
                        <form action="ads/delete?id=${ad.id}" method="POST">
                            <button>Delete</button>
                        </form>
                    </c:if>
                </div>
            </c:forEach>
        </div>
    </div>
</div>





