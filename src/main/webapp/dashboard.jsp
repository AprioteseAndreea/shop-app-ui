<%--
  Created by IntelliJ IDEA.
  User: andre
  Date: 6/18/2023
  Time: 4:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>

    <link href="resources/css/dashboard.css"
          rel="stylesheet"/>
</head>
<body>
<main>
    <div class="product-container">

        <div class="container">

            <div class="product-box">

                <div class="product-main">

                    <h2 class="title">New Products</h2>

                    <div class="product-grid">
                        <c:forEach items="${dashboardBean.getProducts()}" var="p">
                            <jsp:include page="product-component.jsp">
                                <jsp:param name="product" value="${p}" />
                            </jsp:include>
                        </c:forEach>
                    </div>

                </div>

            </div>

        </div>

    </div>
</main>

<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</body>
</html>
