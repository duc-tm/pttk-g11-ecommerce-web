<%-- 
    Document   : home
    Created on : Nov 12, 2021, 1:31:01 PM
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

        <link href="${pageContext.request.contextPath}/css/home.css" rel="stylesheet" />

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>

    <body class="bg-light">

        <jsp:include page="components/header.jsp"></jsp:include>

        <jsp:include page="auth-modals.jsp"></jsp:include>



            <!-- Intro -->
            <div class="container p-5">
                <div class="row row-cols-3 mt-5">

                    <!-- Left component -->
                    <div class="col-2 bg-light">
                        <div class="row row-cols-1 bg-white">
                            <div class="col pt-3">
                                <div class="row-cols-1 text-center">
                                    <p class="h6 ">Sản phẩm khuyến mãi</p>
                                </div>
                                <hr>
                                <div class="row-cols-1 mt-5 g-3">
                                    <div class="card h-100 mb-3">
                                        <div class="badge bg-light position-absolute text-danger"
                                             style="top: 0.5rem; right: 0.5rem">
                                            Sale</div>
                                        <img src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" class="card-img-top">
                                        <div class="card-body">
                                            <div class="text-center">
                                                <h5 class="fw-bolder"> Product</h5>
                                                <span class="text-muted text-decoration-line-through">1000vnd</span>
                                                10000vnd
                                            </div>
                                        </div>

                                        <div class="text-center mb-4">
                                            <a href="" class="btn btn-outline-dark"> Buy</a>
                                        </div>

                                    </div>
                                    <div class="card h-100 mb-3">
                                        <div class="badge bg-light position-absolute text-danger"
                                             style="top: 0.5rem; right: 0.5rem">
                                            Sale</div>
                                        <img src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" class="card-img-top">
                                        <div class="card-body">
                                            <div class="text-center">
                                                <h5 class="fw-bolder"> Product</h5>
                                                <span class="text-muted text-decoration-line-through">1000vnd</span>
                                                10000vnd
                                            </div>
                                        </div>

                                        <div class="text-center mb-4">
                                            <a href="" class="btn btn-outline-dark"> Buy</a>
                                        </div>

                                    </div>
                                    <div class="card h-100 mb-3">
                                        <div class="badge bg-light position-absolute text-danger"
                                             style="top: 0.5rem; right: 0.5rem">
                                            Sale</div>
                                        <img src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" class="card-img-top">
                                        <div class="card-body">
                                            <div class="text-center">
                                                <h5 class="fw-bolder"> Product</h5>
                                                <span class="text-muted text-decoration-line-through">1000vnd</span>
                                                10000vnd
                                            </div>
                                        </div>

                                        <div class="text-center mb-4">
                                            <a href="" class="btn btn-outline-dark"> Buy</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>




                    <!-- Middle component -->
                    <div class="col-8 bg-light p-5">

                        <!-- Slider -->
                        <div class="row row-cols-1 bg-white mb-4">

                            <div id="demo" class="carousel slide" data-bs-ride="carousel">

                                <!-- Indicators/dots -->
                                <div class="carousel-indicators">
                                    <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                                    <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                                    <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
                                </div>

                                <!-- The slideshow/carousel -->
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img src="https://cf.shopee.sg/file/db7ac0e40911209bd2bfb23734c44a12_xxhdpi" alt="Los Angeles" class="d-block py-2" style="width:100%">
                                        <div class="carousel-caption text-black">
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <img src="https://cf.shopee.sg/file/dbb46a96d0f77fb69fd7276d06314093_xxhdpi" alt="Los Angeles" class="d-block py-2" style="width:100%">
                                        <div class="carousel-caption text-black">
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <img src="https://cf.shopee.sg/file/248aed9bfe0583e760c893800ef6af00_xxhdpi" alt="Los Angeles" class="d-block py-2" style="width:100%">
                                        <div class="carousel-caption text-black">
                                        </div>
                                    </div>
                                </div>

                                <!-- Left and right controls/icons -->
                                <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                                    <span class="carousel-control-prev-icon"></span>
                                </button>
                                <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                                    <span class="carousel-control-next-icon"></span>
                                </button>
                            </div>
                        </div>

                        <!-- Danh mục hàng -->
                        <div class="row row-cols-1 bg-white mt-5">
                            <div class="col pb-4">
                                <div class="row py-3 ">
                                    <div class="text-center text-black">
                                        <h4>Danh mục mua hàng</h4>
                                    </div>
                                </div>
                                <hr>
                                <div class="px-3 row row-cols-4">
                                    <div class="col-3 text-start">
                                        <div>
                                            <img src="" alt="">
                                            <h5 class="">
                                                <div><a href="" class="text-black text-decoration-none">Quần áo</a></div>
                                            </h5>
                                            <div><a href="" class="text-black text-decoration-none">Quần áo nam</a></div>
                                            <div><a href="" class="text-black text-decoration-none">Quần áo nữ</a></div>
                                            <div><a href="" class="text-black text-decoration-none">Quần áo trẻ em</a></div>
                                            <div><a href="" class="text-black text-decoration-none">Đồ uniex</a></div>
                                        </div>
                                    </div>
                                    <div class="col-3 text-start">
                                        <div>
                                            <img src="" alt="">
                                            <h5 class="">
                                                <div><a href="" class="text-black text-decoration-none">Giày</a></div>
                                            </h5>
                                            <div><a href="" class="text-black text-decoration-none">Giày thể thao</a></div>
                                            <div><a href="" class="text-black text-decoration-none">Giày lười</a></div>
                                            <div><a href="" class="text-black text-decoration-none">Giày da</a></div>
                                        </div>
                                    </div>
                                    <div class="col-3 text-start">
                                        <div>
                                            <img src="" alt="">
                                            <h5 class="">
                                                <div><a href="" class="text-black text-decoration-none">Sách</a></div>
                                            </h5>
                                            <div><a href="" class="text-black text-decoration-none">Tiểu thuyết</a></div>
                                            <div><a href="" class="text-black text-decoration-none">Sách văn học</a></div>
                                            <div><a href="" class="text-black text-decoration-none">Sách đời sống xã hội</a>
                                            </div>
                                            <div><a href="" class="text-black text-decoration-none">Truyện tranh</a></div>
                                        </div>
                                    </div>
                                    <div class="col-3 text-start">
                                        <div>
                                            <img src="" alt="">
                                            <h5 class="">
                                                <div><a href="" class="text-black text-decoration-none">Đồ điện tử</a></div>
                                            </h5>
                                            <div><a href="" class="text-black text-decoration-none">Laptop</a></div>
                                            <div><a href="" class="text-black text-decoration-none">Điện thoại</a></div>
                                            <div><a href="" class="text-black text-decoration-none">Tivi</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- Right component -->
                    <div class="col-2 bg-light">
                        <div class="row row-cols-1 bg-white">
                            <div class="col pt-3">
                                <div class="row-cols-1 text-center">
                                    <p class="h6 ">Ưu đãi</p>
                                </div>
                                <hr>
                                <div class="row-cols-1 mt-5 g-3">
                                    <div class="card h-100 mb-3">
                                        <div><a href="" class="text-black text-decoration-none">
                                                <div class="badge bg-light position-absolute text-danger"
                                                     style="top: 0.5rem; right: 0.5rem">mua
                                                    2 tặng 1
                                                </div>
                                                <img src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                                                     class="card-img-top">
                                                <div class="card-body">
                                                    <div class="text-center">
                                                        <h5 class="fw-bolder">Mua 2 tặng 1</h5>
                                                    </div>
                                                </div>
                                            </a></div>
                                    </div>
                                    <div class="card h-100 mb-3">
                                        <div><a href="" class="text-black text-decoration-none">
                                                <div class="badge bg-light position-absolute text-danger"
                                                     style="top: 0.5rem; right: 0.5rem">
                                                    Free ship
                                                </div>
                                                <img src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                                                     class="card-img-top">
                                                <div class="card-body">
                                                    <div class="text-center">
                                                        <h5 class="fw-bolder">mua trên 3 món</h5>
                                                    </div>
                                                </div>
                                            </a></div>
                                    </div>
                                    <div class="card h-100 mb-3">
                                        <div><a href="" class="text-black text-decoration-none">
                                                <div class="badge bg-light position-absolute text-danger"
                                                     style="top: 0.5rem; right: 0.5rem">
                                                    Limited
                                                </div>
                                                <img src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                                                     class="card-img-top">
                                                <div class="card-body">
                                                    <div class="text-center">
                                                        <h5 class="fw-bolder">Hàng giới hạn</h5>

                                                    </div>
                                                </div>
                                            </a></div>
                                    </div>
                                    <div class="card h-100 mb-3">
                                        <div><a href="" class="text-black text-decoration-none">
                                                <div class="badge bg-light position-absolute text-danger"
                                                     style="top: 0.5rem; right: 0.5rem">
                                                    Limited
                                                </div>
                                                <img src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                                                     class="card-img-top">
                                                <div class="card-body">
                                                    <div class="text-center">
                                                        <h5 class="fw-bolder">Second hand</h5>

                                                    </div>
                                                </div>
                                            </a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div>
                <div>
                    <img src="/img/Banner_Clothing.jpg" alt="">
                </div>

                <!-- Slider Best Seller -->

                <div>
                    <div class="p-5 m-5">

                        <div class="text-center mb-3 pb-3">
                            <h2>Best Seller</h2>
                        </div>
                        <hr>

                        <div id="best-seller" class="carousel slide" data-bs-ride="carousel">

                            <!-- Indicators/dots -->
                            <div class="carousel-indicators">
                                <button type="button" data-bs-target="#best-seller" data-bs-slide-to="0"
                                        class="active"></button>
                                <button type="button" data-bs-target="#best-seller" data-bs-slide-to="1"></button>
                                <button type="button" data-bs-target="#best-seller" data-bs-slide-to="2"></button>
                            </div>

                            <!-- The slideshow/carousel -->
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <div class="row row-cols-4 g-5 bg-light">
                                        <div class="col-3 p-3">
                                            <div><a href="" class="text-black text-decoration-none">
                                                    <div>
                                                        <img src="/img/pic1.jpg" class="w-100 h-100">
                                                    </div>
                                                    <div class="text-center">
                                                        <h5>Baseball cal</h5>
                                                        <div>
                                                            <p>Pink</p>
                                                        </div>
                                                        <span class="text-muted text-decoration-line-through">1000</span>
                                                        10000
                                                    </div>
                                                </a></div>

                                        </div>
                                        <div class="col-3 p-3">
                                            <div><a href="" class="text-black text-decoration-none">
                                                    <div>
                                                        <img src="/img/pic4.jpg" class="w-100 h-100">
                                                    </div>
                                                    <div class="text-center">
                                                        <h5>Vintas new Military</h5>
                                                        <div>
                                                            <p>Capulet Olive</p>
                                                        </div>
                                                        <span class="text-muted text-decoration-line-through">1000</span>
                                                        10000
                                                    </div>
                                                </a></div>

                                        </div>
                                        <div class="col-3 p-3">
                                            <div><a href="" class="text-black text-decoration-none">
                                                    <div>
                                                        <img src="/img/pic3.jpg" class="w-100 h-100">
                                                    </div>
                                                    <div class="text-center">
                                                        <h5>Basic Tee</h5>
                                                        <div>
                                                            <p>White Asparagus</p>
                                                        </div>
                                                        <span class="text-muted text-decoration-line-through">1000</span>
                                                        10000
                                                    </div>
                                                </a></div>

                                        </div>
                                        <div class="col-3 p-3">
                                            <a href="" class="text-black text-decoration-none">
                                                <div>
                                                    <img src="/img/pic2.jpg" class="w-100 h-100">
                                                </div>
                                                <div class="text-center">
                                                    <h5>Bassas bumper Gum</h5>
                                                    <div>
                                                        <p>OffWhite/Gum</p>
                                                    </div>
                                                    <span class="text-muted text-decoration-line-through">1000</span>
                                                    10000
                                                </div>
                                            </a>

                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="row row-cols-4 g-5 bg-light">
                                        <div class="col-3 p-3">
                                            <div><a href="" class="text-black text-decoration-none">
                                                    <div>
                                                        <img src="/img/pic2-1.jpg" class="w-100 h-100">
                                                    </div>
                                                    <div class="text-center">
                                                        <h5>Bassas new simple life</h5>
                                                        <div>
                                                            <p>White</p>
                                                        </div>
                                                        <span class="text-muted text-decoration-line-through">1000</span>
                                                        10000
                                                    </div>
                                                </a></div>

                                        </div>
                                        <div class="col-3 p-3">
                                            <div><a href="" class="text-black text-decoration-none">
                                                    <div>
                                                        <img src="/img/pic2-2.jpg" class="w-100 h-100">
                                                    </div>
                                                    <div class="text-center">
                                                        <h5>Basas mono black -Slip on</h5>
                                                        <div>
                                                            <p>Black</p>
                                                        </div>
                                                        <span class="text-muted text-decoration-line-through">1000</span>
                                                        10000
                                                    </div>
                                                </a></div>

                                        </div>
                                        <div class="col-3 p-3">
                                            <div><a href="" class="text-black text-decoration-none">
                                                    <div>
                                                        <img src="/img/pic2-3.jpg" class="w-100 h-100">
                                                    </div>
                                                    <div class="text-center">
                                                        <h5>Bassas new Familiar</h5>
                                                        <div>
                                                            <p>Light grey</p>
                                                        </div>
                                                        <span class="text-muted text-decoration-line-through">1000</span>
                                                        10000
                                                    </div>
                                                </a></div>

                                        </div>
                                        <div class="col-3 p-3">
                                            <div><a href="" class="text-black text-decoration-none">
                                                    <div>
                                                        <img src="/img/pic2-4.jpg" class="w-100 h-100">
                                                    </div>
                                                    <div class="text-center">
                                                        <h5>Basas mono black -Low top</h5>
                                                        <div>
                                                            <p>Black</p>
                                                        </div>
                                                        <span class="text-muted text-decoration-line-through">1000</span>
                                                        10000
                                                    </div>
                                                </a></div>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Left and right controls/icons -->
                            <button class="carousel-control-prev" type="button" data-bs-target="#best-seller"
                                    data-bs-slide="prev">
                                <span class="carousel-control-prev-icon"></span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#best-seller"
                                    data-bs-slide="next">
                                <span class="carousel-control-next-icon"></span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Footer -->
        <jsp:include page="components/footer.jsp"></jsp:include>

    </body>
</html>
