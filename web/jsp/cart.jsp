<%-- 
    Document   : cart
    Created on : Nov 13, 2021, 9:52:15 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shopyy</title>
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="${pageContext.request.contextPath}/css/variables.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/css/counter.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/css/header.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/css/footer.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/css/cart.css" rel="stylesheet" />

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>

        <jsp:include page="components/header.jsp"></jsp:include>

            <!-- Cart -->
            <div class="container my-5 p-3">
                <div class="ps-3">
                    <h3 class="text-primary">Giỏ hàng của tôi</h3>
                </div>
                <hr>
                <div class="row row-cols-3">
                    <div class="col-3"></div>
                    <div class="col-6">
                        <div class="position-relative">
                            <div class="progress" style="height: 2px;">
                                <div class="progress-bar progress-bar-animated" style="width: 33%; height: 2px;"></div>
                            </div>
                            <div class="position-absolute text-center align-content-center" style="left: 16%; bottom: -8px;">
                                <div><i class="bi-cart-fill me-1 text-primary"></i></div>
                                <div>
                                    <p class="text-primary mb-2">Giỏ hàng</p>
                                </div>
                                <div><span class="badge bg-primary text-white ms-1 rounded-pill my-0">1</span></div>
                            </div>
                            <div class="position-absolute text-center align-content-center" style="left: 45%; bottom: -8px;">
                                <div><i class="bi-currency-dollar me-1 text-secondary"></i></div>
                                <div>
                                    <p class="text-secondary mb-1">Thanh toán</p>
                                </div>
                                <div><span class="badge bg-secondary text-white ms-1 rounded-pill my-0">1</span></div>
                            </div>
                            <div class="position-absolute text-center align-content-center" style="right: 16%; bottom: -8px;">
                                <div><i class="bi-check-circle me-1 text-secondary"></i></div>
                                <div>
                                    <p class="text-secondary mb-1">Hoàn tất</p>
                                </div>
                                <div><span class="badge bg-secondary text-white ms-1 rounded-pill my-0">1</span></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-3"></div>
                </div>
                <br><br>
                <div class="row mt-5 p-0">
                    <div>
                        <table class="table table-borderless shadow-sm">
                            <thead style="background-color: rgb(245, 245, 245);">
                                <tr>
                                    <th class="text-center"><input type="checkbox" name="" id="" class="form-check-input select-item"></th>
                                    <th>Sản phẩm</th>
                                    <th>Đơn Giá</th>
                                    <th>Số lượng</th>
                                    <th>Số tiền</th>
                                    <th>Thao Tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="align-content-lg-between center">
                                    <td class="text-center"><input type="checkbox" name="" id="" class="form-check-input"></td>
                                    <td>
                                        <a href="" class="item-general-info">
                                            <div class="item-img">
                                                <img src="https://cf.shopee.vn/file/36368bf1379e8a1c664db03927622869_tn" alt="" class="img-fluid">
                                            </div>
                                            <div class="item-name">
                                                Áo tdun nữ
                                            </div>                               
                                        </a>
                                    </td>
                                    <td><div class="item-price">10000</div></td>
                                    <td>                                    
                                    <jsp:include page="components/counter.jsp"></jsp:include>
                                    </td>
                                    <td>Thành tiền</td>
                                    <td class="text-center"><i class="bi-trash-fill text-danger delete-item-btn"></i></td>
                                </tr>
                                <tr class="align-content-lg-between center">
                                    <td class="text-center"><input type="checkbox" name="" id="" class="form-check-input"></td>
                                    <td>
                                        <a href="" class="item-general-info">
                                            <div class="item-img">
                                                <img src="https://cf.shopee.vn/file/36368bf1379e8a1c664db03927622869_tn" alt="" class="img-fluid">
                                            </div>
                                            <div class="item-name">
                                                Áo tdun nữ
                                            </div>                               
                                        </a>
                                    </td>
                                    <td><div class="item-price">10000</div></td>
                                    <td>                                    
                                    <jsp:include page="components/counter.jsp"></jsp:include>
                                    </td>
                                    <td>Thành tiền</td>
                                    <td class="text-center"><i class="bi-trash-fill text-danger delete-item-btn"></i></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class=" d-flex flex-column">
                    <div class="total-bill">
                        <div class="total-bill__title">Tổng thanh toán:</div>
                        <div class="total-bill__cost ms-2">20000</div>
                    </div>
                    <button class="btn btn-primary mt-3" id="pay-now">Thanh toán</button>
                </div>
            </div>
            <!-- Footer -->
        <jsp:include page="components/footer.jsp"></jsp:include>

            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
            <script src="${pageContext.request.contextPath}/js/counter.js"></script>
    </body>
</html>
