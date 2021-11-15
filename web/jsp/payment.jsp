<%-- 
    Document   : payment
    Created on : Nov 13, 2021, 10:00:19 AM
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
        <link href="${pageContext.request.contextPath}/css/auth-modals.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/css/header.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/css/footer.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/css/checkout.css" rel="stylesheet" />

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>

        <!-- Nav -->
        <jsp:include page="components/header.jsp"></jsp:include>

            <!-- payment -->
            <div class="container my-5 p-3">
                <br>
                <div class="ps-3">
                    <h3>Thanh toán</h3>
                </div>
                <hr>
                <div class="row row-cols-3">
                    <div class="col-3"></div>
                    <div class="col-6">
                        <div class="position-relative">
                            <div class="progress" style="height: 2px;">
                                <div class="progress-bar progress-bar-animated" style="width: 66%; height: 2px;"></div>
                            </div>
                            <div class="position-absolute text-center align-content-center" style="left: 16%; bottom: -8px;">
                                <div><i class="bi-cart-fill me-1 text-primary"></i></div>
                                <div>
                                    <p class="text-primary mb-2">Giỏ hàng</p>
                                </div>
                                <div><span class="badge bg-primary text-white ms-1 rounded-pill my-0">1</span></div>
                            </div>
                            <div class="position-absolute text-center align-content-center" style="left: 45%; bottom: -8px;">
                                <div><i class="bi-currency-dollar me-1 text-primary"></i></div>
                                <div>
                                    <p class="text-primary mb-1">Thanh toán</p>
                                </div>
                                <div><span class="badge bg-primary text-white ms-1 rounded-pill my-0">2</span></div>
                            </div>
                            <div class="position-absolute text-center align-content-center" style="right: 16%; bottom: -8px;">
                                <div><i class="bi-check-circle me-1 text-secondary"></i></div>
                                <div>
                                    <p class="text-secondary mb-1">Hoàn tất</p>
                                </div>
                                <div><span class="badge bg-secondary text-white ms-1 rounded-pill my-0">3</span></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-3"></div>
                </div>
                <div class="row row-cols-3 gx-3 mt-5 mb-4 px-5">
                    <div class="col-4 px-2 ">
                        <div class="border" style="height: 100%;">
                            <div class="px-2 py-2 mb-2" style="background-color: rgb(245, 245, 245);">
                                <h6 class="m-0">1. ĐỊA CHỈ THANH TOÁN VÀ GIAO HÀNG</h6>
                            </div>
                            <div class="py-1 px-3">
                                <div class="pb-1"><p>THÔNG TIN THANH TOÁN</p></div>
                                <div class="shipment-info mt-0">Người nhận</div>
                                <div class="shipment-info">Điện thoại</div>
                                <div class="shipment-info">Địa chỉ cụ thể</div>
                                <div class="shipment-info">Quận/Huyện</div> 
                                <div class="shipment-info">Thành phố</div>
                                <div class="mt-3">
                                    <div>
                                        <input type="checkbox" class="form-check-input" id="another-address-checkbox" data-bs-toggle="collapse" data-bs-target="#another-address-collapse">
                                        <label class="form-check-label ms-3 user-select-none" for="another-address-checkbox">Chọn địa chỉ giao hàng khác</label>
                                    </div>
                                    <div id="another-address-collapse" class="collapse mt-4">
                                        <form id="another-address-form">
                                            <input type="text" id="diff-ship-type-name" placeholder="Họ và tên" class="form-control">
                                            <input type="text" id="diff-ship-type-phone" placeholder="Số điện thoại" class="form-control my-4">
                                            <input type="text" id="diff-ship-type-add" placeholder="Họ và tên" class="form-control my-4">
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 px-2">
                        <div class="border" style="height: 100%;">
                            <div class="px-2 py-2 mb-2" style="background-color: rgb(245, 245, 245);">
                                <h6 class="m-0">2. THANH TOÁN VÀ VẬN CHUYỂN</h6>
                            </div>
                            <div class="py-1 px-3">
                                <div class="pb-1"><p>VẬN CHUYỂN</p></div>
                                <select class="form-select" id="shipment-type-select" name="shipment-type">
                                    <option value="ghn">Giao hàng nhanh</option>
                                    <option value="now">Now ship</option>
                                    <option value="economy">Giao hàng tiết kiệm</option>
                                </select>
                                <div class="payment-type">
                                    <div class="py-2 mt-3"><p>PHƯƠNG THỨC THANH TOÁN</p></div>
                                    <div>
                                        <div class="form-group mb-2">
                                            <input type="radio" id="bank" name="payment-type" value="bank" class="me-2">
                                            <label for="bank">Thanh toán qua ngân hàng</label>
                                        </div>

                                        <div class="form-group">
                                            <input type="radio" id="cod" name="payment-type" value="cod" class="me-2">
                                            <label for="cod">Thanh toán khi nhận hàng</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 px-2">
                        <div class="border pb-4" style="height: 100%;">
                            <div class="px-2 py-2 mb-2" style="background-color: rgb(245, 245, 245);">
                                <h6 class="m-0">3. THÔNG TIN ĐƠN HÀNG</h6>
                            </div>
                            <div class="px-3">
                                <div class="d-flex my-0 align-items-center" style="justify-content: space-between;">
                                    <div class="item-general-info">
                                        <img class="item-img me-2" src="https://cf.shopee.vn/file/097f8e36d67e0d3f8ae9c98a952a5d9e" alt="">
                                        <div class="item-name">Áo thun nữ</div>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <div class="item-unit-price me-2">10.000</div>
                                        <div class="item-quantity">x5</div>
                                    </div>
                                </div>
                                <hr>
                                <div class="d-flex my-0 align-items-center" style="justify-content: space-between;">
                                    <h6>Tổng tiền hàng</h6>
                                    <div class="item-total-price">50.000</div>
                                </div>
                                <hr>
                                <div class="d-flex my-0 align-items-center" style="justify-content: space-between;">
                                    <h6>Phí vận chuyển</h6>
                                    <div class="shipping-cost">15.000</div>  
                                </div>
                                <hr>
                                <div class="d-flex" style="justify-content: space-between;">
                                    <div>
                                        <h6>Tổng thanh toán</h6>
                                    </div>
                                    <div class="total-bill">110.000</div>
                                </div>
                                <hr class="mb-5">
                                <div class="text-end">
                                    <button class="btn btn-primary pay-btn">Thanh toán</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="policy text-center text-muted">
                    Nhấn "Đặt hàng" đồng nghĩa với việc bạn đồng ý tuân theo 
                    <a href="${pageContext.request.contextPath}/policy" class="text-decoration-none">Điều khoản Shopyy</a>
            </div>
        </div>

        <!-- Footer -->
        <jsp:include page="components/footer.jsp"></jsp:include>

    </body>
</html>
