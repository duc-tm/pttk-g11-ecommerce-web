<%-- 
    Document   : list-item
    Created on : Nov 14, 2021, 9:34:59 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "custom" uri = "../WEB-INF/custom-tag.tld"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="height=device-height, 
              width=device-width, initial-scale=1.0, 
              minimum-scale=1.0, maximum-scale=1.0, 
              user-scalable=no">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/old-css/base.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/old-css/main.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/old-css/responsive.css">
        <link href="${pageContext.request.contextPath}/css/variables.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/css/auth-modals.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/css/header.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/css/footer.css" rel="stylesheet" />

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <title>Document</title>
    </head>

    <body>
        <div class="main">
            <jsp:include page="components/header.jsp"></jsp:include>

            <jsp:include page="auth-modals.jsp"></jsp:include>

                <div class="container mt-4">
                    <div class="row">
                        <div class="col-12">
                            <h2 class="mb-4 fs-4">Danh sách sản phẩm</h2>

                            <div class="home-product">
                                <div class="row">
                                <c:forEach items="${listItem}" var="item">
                                    <div class="col-md-2">
                                        <a class="home-product__item" href="product/<c:out value="${item.ID}" />">
                                            <div class="home-product__item-img"
                                                 style="background-image: url(<c:out value="${item.image}" />);">
                                            </div>
                                            <h4 class="home-product__item-name text-capitalize"><c:out value="${item.name}" /></h4>
                                            <div class="home-product__item-price">
                                                <span class="home-product__item-price--old me-1">
                                                    <custom:currencyFormat amount="${item.price}" currencyFormat="vi"/>
                                                </span>
                                                <span class="home-product__item-price--current mb-2">
                                                    <custom:currencyFormat amount="${item.price - item.price*(item.discount/100)}" currencyFormat="vi"/>
                                                </span>
                                            </div>
                                        </a>
                                    </div>
                                </c:forEach>


                            </div>
                        </div>

                        <div class="footer-pagination mt-5">
                            <button class="prev-page-btn">
                                <i class="fas fa-chevron-left"></i>
                            </button>
                            <div class="pagination-list">
                                <c:forEach var = "i" begin = "1" end = "${totalPage}">
                                    <a href="?page=<c:out value = "${i}"/>"><c:out value = "${i}"/></a>
                                </c:forEach>
                            </div>
                            <button class="next-page-btn">
                                <i class="fas fa-chevron-right"></i>
                            </button>
                        </div>
                    </div>
                </div>



            </div>

            <jsp:include page="components/footer.jsp"></jsp:include>

            </div>

            <script src="${pageContext.request.contextPath}/js/pagination.js"></script>
        <script src="${pageContext.request.contextPath}/js/search-control.js"></script>
    </body>

</html>
