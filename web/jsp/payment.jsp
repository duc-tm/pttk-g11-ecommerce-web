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

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body class="bg-light">

        <!-- Nav -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light border">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!">Shopyy</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                        aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="nav navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link" aria-current="page" href="/view/home.html">Trang chủ</a>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="#!">Các mặt hàng</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
                               aria-expanded="false">Hot</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">Hàng HOT</a></li>
                                <li><a class="dropdown-item" href="#!">Hàng mới</a></li>
                            </ul>
                        </li>
                    </ul>
                    <div class="me-5 pe-5" style="min-width: 50%;">
                        <input type="text" placeholder="Tìm kiếm mặt hàng" class="form-control">
                    </div>
                    <form class="d-flex">
                        <button class="btn btn-outline-success" type="submit">
                            <i class="bi-cart-fill me-1 text-primary"></i>
                            Giỏ hàng
                            <span class="badge bg-primary text-white ms-1 rounded-pill">0</span>
                        </button>
                    </form>
                    </ul>
                </div>
            </div>
            <div>
                <a href="" class="text-decoration-none text-secondary" data-bs-toggle="modal" data-bs-target="#sigin" >Đăng Kí</a>
                /
                <a href="" class="text-decoration-none text-primary" data-bs-toggle="modal" data-bs-target="#Login">Đăng Nhập</a>
            </div>
        </nav>

        <!-- Login modal -->
        <div class="modal fade" id="Login">
            <div class="modal-dialog">  
                <div class="modal-content">

                    <div class="modal-header text-center">
                        <h4 class="modal-title ">Đăng nhập</h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                    </div>

                    <div class="modal-body">
                        <form action="" name="forms" class="mx-3">
                            <div class="my-3">
                                <input type="text" name="uname" id="username" class="form-control"
                                       placeholder="Username">
                            </div>
                            <div class="my-3">
                                <input type="password" name="pass" id="password" class="form-control"
                                       placeholder="Password">
                            </div>
                        </form>
                    </div>


                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline-danger mx-5">Đăng nhập</button>
                    </div>

                </div>
            </div>
        </div>

        <!-- Singin modal -->
        <div class="modal fade" id="sigin">
            <div class="modal-dialog">  
                <div class="modal-content">


                    <div class="modal-header text-center">
                        <h4 class="modal-title ">Đăng Kí</h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                    </div>


                    <div class="modal-body">
                        <form action="" name="forms" class="mx-3">
                            <div class="my-3">
                                <input type="text" name="uname" id="username" class="form-control"
                                       placeholder="Username">
                            </div>
                            <div class="my-3">
                                <input type="password" name="pass" id="password" class="form-control"
                                       placeholder="Password">
                            </div>
                        </form>
                    </div>


                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline-primary">Đăng kí</button>
                    </div>

                </div>
            </div>
        </div>

        <!-- payment -->
        <div class="container my-5 p-3">
            <br>
            <div class="ps-3">
                <h3 style="color: #7aaedd;">Thanh toán</h3>
            </div>
            <hr>
            <br><br><br><br>
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
            <br><br>
            <div class="row row-cols-3 gx-3 mt-1 mb-4 px-5">
                <div class="col-4 px-2 ">
                    <div class="border" style="height: 100%;">
                        <div class="px-2" style="background-color: #7aaedd">
                            <p class="text-white">1.ĐỊA CHỈ THANH TOÁN VÀ GIAO HÀNG</p>
                        </div>
                        <div class="py-1 px-3">
                            <div class="pb-1"><p>THÔNG TIN THANH TOÁN</p></div>
                            <div><p>người nhận:</p></div>
                            <div><p>Điện thoại</p></div>
                            <div><p>Gmail:</p></div>
                            <div><p>Địa chỉ:</p></div>
                            <div><p>Quận/Huyện:</p></div> 
                            <div><p>Thành phố:</p></div>
                            <br>
                            <div>
                                <div>
                                    <input type="checkbox" class="d-inline-block form-check-input">
                                    <p class="d-inline-block mx-3">Chọn địa chỉ giao hàng khác</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-4 px-2">
                    <div class="border" style="height: 100%;">
                        <div class="px-2" style="background-color: #7aaedd">
                            <p class="text-white">2.CÁCH THANH TOÁN VÀ VẬN CHUYỂN</p>
                        </div>
                        <div class="py-1 px-3">
                            <div class="pb-1"><p>VẬN CHUYỂN</p></div>
                            <div>
                                <select class="form-select" id="" name="ship-type">
                                    <option>Giao hàng nhanh</option>
                                    <option>Now ship</option>
                                    <option>Giao hàng tiết kiệm</option>
                                </select></div>
                            <div>
                                <div class="py-2 mt-3"><p>PHƯƠNG THỨC THANH TOÁN</p></div>
                                <div>
                                    <input type="radio" id="bank" name="payment-type" value="bank">
                                    <label for="bank">Thanh toán qua ngân hàng</label><br>
                                    <br>
                                    <input type="radio" id="cod" name="payment-type" value="cod">
                                    <label for="cod">Thanh toán khi nhân hàng</label><br>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-4 px-2">
                    <div class="border pb-4" style="height: 100%;">
                        <div class="px-2" style="background-color: #7aaedd">
                            <p class="text-white">3.THÔNG TIN ĐƠN HÀNG</p>
                        </div>
                        <div class="px-3">
                            <div class="d-flex my-0" style="justify-content: space-between;">
                                <div>
                                    <img src="/img/ao-belike1_master (1).jpg" width="50px" alt="">
                                    <p class="d-inline-block">Áo thun nữ </p>
                                </div>
                                <p style="color: #9fcdf5;">10.000</p>
                            </div>
                            <hr>
                            <div class="d-flex my-0" style="justify-content: space-between;">
                                <div>
                                    <h6 style="font-weight: 700;">Thành tiền</h6>
                                </div>
                                <p>10.000</p>
                            </div>
                            <hr>
                            <div class="d-flex my-0" style="justify-content: space-between;">
                                <div>
                                    <h6 class="" style="font-weight: 700;">Phí vận chuyển</h6>
                                </div>
                                <p>100.000</p>  
                            </div>
                            <hr>
                            <div class="d-flex" style="justify-content: space-between;">
                                <div>
                                    <h5 style="font-weight: 700;">Tổng</h5>
                                </div>
                                <p style="font-weight: 700;">110.000</p>
                            </div>
                            <hr>
                            <div class="text-end mt-5">
                                <button class="btn btn-outline-success me-5">Thanh toán</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <br><br><br><br>

        <!-- Footer -->
        <div class="mt-5 p-4 bg-secondary">
            <div class="row row-cols-3">
                <div class="col-3"></div>
                <div class="col-3">
                    <h3>Sản phẩm</h3>
                    <div><a href="" class="text-black text-decoration-none">Giày</a></div>
                    <div><a href="" class="text-black text-decoration-none">Quần áo</a></div>
                    <div><a href="" class="text-black text-decoration-none">Sách</a></div>
                    <div><a href="" class="text-black text-decoration-none">Đồ điện tử</a></div>
                </div>
                <div class="col-3">
                    <h3>Hỗ trợ</h3>
                    <div><a href="" class="text-black text-decoration-none">Đóng góp</a></div>
                    <div><a href="" class="text-black text-decoration-none">Phản hồi về sản phẩm</a></div>
                    <div><a href="" class="text-black text-decoration-none">Gợi ý</a></div>
                </div>
                <div class="col-3">
                    <h3>Liên hệ</h3>
                    <div><a href="" class="text-black text-decoration-none">Gmail</a></div>
                    <div><a href="" class="text-black text-decoration-none">Hotline</a></div>
                    <div><a href="" class="text-black text-decoration-none">Facebook</a></div>
                </div>
            </div>
            <hr>
            <div class="text-center">
                <h3>Copyright@byMe</h3>
            </div>
        </div>

    </body>
</html>
