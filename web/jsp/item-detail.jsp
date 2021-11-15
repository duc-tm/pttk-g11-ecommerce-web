<%-- 
    Document   : item-detail
    Created on : Nov 13, 2021, 10:01:28 AM
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
        <link href="${pageContext.request.contextPath}/css/auth-modals.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/css/header.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/css/footer.css" rel="stylesheet" />

        <link href="${pageContext.request.contextPath}/css/item-detail.css" rel="stylesheet" />

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body class="bg-light">

        <jsp:include page="components/header.jsp"></jsp:include>

        <jsp:include page="auth-modals.jsp"></jsp:include>


            <div class="container my-5 main">
                <div class="bread-crumb"></div>
                <div class="item-detail bg-white mx-5">
                    <div class="row py-3 ps-3 pe-4">
                        <div class="col-4">
                            <div class="item-images">
                                <img class="img-fluid" src="https://cf.shopee.vn/file/261ab9ba934929a47bbb43a6be27a74d">
                                <div class="item-images__carousel">
                                    <div class="row">
                                        <div class="col-3">
                                            <img class="img-fluid" src="https://cf.shopee.vn/file/261ab9ba934929a47bbb43a6be27a74d">
                                        </div>
                                        <div class="col-3">
                                            <img class="img-fluid" src="https://cf.shopee.vn/file/261ab9ba934929a47bbb43a6be27a74d">
                                        </div>
                                        <div class="col-3">
                                            <img class="img-fluid" src="https://cf.shopee.vn/file/261ab9ba934929a47bbb43a6be27a74d">
                                        </div>
                                        <div class="col-3">
                                            <img class="img-fluid" src="https://cf.shopee.vn/file/261ab9ba934929a47bbb43a6be27a74d">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-8">
                            <div class="item-info">
                                <h3 class="item-info__title fw-normal text-capitalize">Bộ đồ Chạy Xe Đạp Tay Ngắn Nhanh Khô Cho Nam</h3>
                                <div class="item-info__price bg-light p-3 fs-3 text-primary mt-4">
                                    <span class="item-info__price--old"><sup>₫</sup>190.000</span>
                                    <span class="item-info__price--new"><sup>₫</sup>354.889</span>
                                    <span class="item-info__price--discount">44% GIẢM</span>
                                </div>

                                <div class="row mt-4">
                                    <div class="col-2 label d-flex align-items-center">
                                        <div class="text-muted text-capitalize">Số Lượng</div>
                                    </div>
                                    <div class="col-10 content d-flex align-items-center">
                                    <jsp:include page="components/counter.jsp"></jsp:include>
                                        <div class="item-info__quantity-available ms-3 text-muted">
                                            5982 sản phẩm có sẵn
                                        </div>
                                    </div>
                                </div>

                                <div class="row mt-4">
                                    <div class="col-2 label d-flex align-items-center">
                                        <div class="text-muted text-capitalize">Size</div>
                                    </div>
                                    <div class="col-10 content d-flex align-items-center">
                                        <div class="item-info__type-select">
                                            <div class="item-info__type">
                                                <input type="radio" name="type" value="xl" id="type-1">
                                                <label for="type-1">XL<i class="fas fa-check"></i></label>

                                                <input type="radio" name="type" value="l" id="type-2">
                                                <label for="type-2">L<i class="fas fa-check"></i></label>

                                                <input type="radio" name="type" value="m" id="type-3">
                                                <label for="type-3">M<i class="fas fa-check"></i></label>

                                                <input type="radio" name="type" value="s" id="type-4">
                                                <label for="type-4">S<i class="fas fa-check"></i></label>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="item-control mt-5">
                                    <button type="button" class="btn btn-outline-primary text-capitalize me-2" id="add-to-cart">
                                        <i class="fas fa-cart-plus me-2"></i>Thêm vào giỏ hàng
                                    </button>
                                    <button type="button" class="btn btn-primary text-capitalize" id="buy-now">Mua ngay</button>
                                </div>
                            </div>
                            <hr class="text-muted my-4"/>
                            <div class="return-guarantee mb-2">
                                <span class="return-guarantee__amount text-capitalize text-muted d-flex align-items-center">
                                    <i class="fas fa-shield-alt me-1  fs-5 text-success"></i>
                                    <span class="return-guarantee__caption text-capitalize text-success me-3">Shopyy đảm bảo</span>
                                    3 Ngày trả hàng / hoàn tiền
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item-desc mx-5 mt-3">
                    <div class="row">
                        <div class="col-10">
                            <div class="item-desc__title text-uppercase  p-4 bg-white">
                                <h4 class="fw-normal text-uppercase bg-light px-3 py-2">Mô tả sản phẩm</h4>
                                <div class="item-desc__content px-3">
                                    <p>Thời gian giao hàng dự kiến cho sản phẩm này là từ 7-9 ngày</p>

                                    <p>Cửa hàng ở Trung Quốc
                                        Nếu bạn không đợi được vui lòng không đặt hàng!</p>

                                    <p>Đặc điểm sản phẩm: 
                                        Hiệu ứng âm bass và âm stereo, mang đến cho bạn trải nghiệm tuyệt vời.
                                        Tích hợp micro, công nghệ giảm tiếng ồn tối ưu, hoàn hảo thích hợp cho chơi game.
                                        Giá thành ưu đãi hơn, trải nghiệm chơi game tốt hơn
                                        Món quà tuyệt vời cho bạn bè của bạn.</p>

                                    <p>Thông tin sản phẩm 
                                        Tên sản phẩm: Tai nghe có dây
                                        Chất liệu: ABS + TPE
                                        Đầu cắm: Đầu cắm 3.5 mm
                                        Độ nhạy: 108dB
                                        Trở kháng: 16Ω
                                        Dải tần số: 13Hz - 21500Hz
                                        Có micrô: Có
                                        Đặc điểm: Nhét tai, có dây, giảm tiếng ồn
                                        Chiều dài cáp tai nghe: 1.2m / 47.24 '' (Khoảng) 
                                        Chiều dài cáp mở rộng: 0.9m / 35.43 '' (Khoảng) 
                                        Chiều dài cáp chuyển đổi: 0.18m / 7.09 '' (Khoảng) </p>

                                </div>
                            </div>
                        </div>
                        <div class="col-2">
                            <div class="top-selling bg-white p-3">
                                <h5 class="top-selling-title text-muted fw-normal mb-3">
                                    Top Sản Phẩm Bán Chạy
                                </h5>
                                <ul class="top-selling-list list-unstyled">
                                    <a href="" class="top-selling-item d-block text-decoration-none text-black">
                                        <img class="img-fluid top-selling-item__img" src="https://cf.shopee.vn/file/2d6c1fb67c7888e641558e86f94ede66_tn">
                                        <h5 class="top-selling-item__title my-2 fw-normal">Tai nghe nhét tai chống ồn tích hợp míc</h5>
                                        <div class="top-selling-item__price text-primary"><sup>₫</sup>63.234</div>
                                    </a>
                                </ul>         
                            </div>                          
                        </div>
                    </div>
                </div>
                <div class="similar-item">
                    <h5 class="similar-item__title fw-normal text-uppercase">Sản phẩm tương tự</h5>
                    <div class="similar-item-list">

                    </div>
                </div>
            </div>
            <!-- Footer -->
        <jsp:include page="components/footer.jsp"></jsp:include>


            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
            <script src="${pageContext.request.contextPath}/js/counter.js"></script>

    </body>
</html>
