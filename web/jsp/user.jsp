<%-- 
    Document   : user
    Created on : Nov 16, 2021, 1:04:50 PM
    Author     : Admin
--%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
        <link href="${pageContext.request.contextPath}/css/item.css" rel="stylesheet" />

        <link href="${pageContext.request.contextPath}/css/user.css" rel="stylesheet" />

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body class="bg-light">
        <jsp:include page="components/header.jsp"></jsp:include>
            <div class="container px-5 mt-5">
                <div class="row">
                    <div class="col-2">
                        <div class="user__general-info">
                            <img class="user__avatar rounded-circle" src="https://cf.shopee.vn/file/1d74524ec09542f944ad95a2a6fd111d_tn" alt="user avatar">
                            <div class="d-flex flex-column text-capitalize ms-3">
                                <div class="user__name mb-1">Minh Hung</div>
                                <div class="user__edit-profile-ctrl text-muted">
                                    <i class="fas fa-pen"></i>
                                    Sửa hồ sơ
                                </div>
                            </div>
                        </div>

                        <hr class="text-muted"/>

                        <div class="user__nav">
                            <ul class="nav-list list-unstyled">
                                <li class="nav-item">
                                    <a href="" class="d-flex align-items-center">
                                        <img class="img-fluid me-2" src="https://cf.shopee.vn/file/84feaa363ce325071c0a66d3c9a88748">
                                        <span>
                                            Ưu đãi dành riêng cho bạn
                                        </span>
                                    </a>
                                </li>
                                <li class="nav-item active">
                                    <a href=""  class="d-flex align-items-center">
                                        <i class="far fa-user me-2 text-primary"></i>
                                        <span>
                                            Tài khoản của tôi
                                        </span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="">
                                        <i class="fas fa-clipboard-list me-2"></i>
                                        Đơn hàng
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-10">
                        <div class="user-profile px-4 py-3 bg-white shadow-sm rounded">
                            <div class="user-profile__header">
                                <h4 class="text-capitalize fw-normal">Hồ Sơ Của Tôi</h4>
                                <span>Quản lý thông tin hồ sơ để bảo mật tài khoản</span>
                            </div> 

                            <hr class="text-muted"/>

                            <div class="user-profile__content">
                                <form action="" method="POST">
                                    <ul class="user-profile__info-list list-unstyled row">
                                        <div class="col-8 user-profile__info-list-left">
                                            <li class="user-profile__info-item text-muted row align-items-center">
                                                <label class="user-profile__info-label form-label col-4" for="username">
                                                    Tên Đăng Nhập
                                                </label>
                                                <div class="user-profile__info-input col-8 text-black" id="username">minhhungwp</div>
                                            </li>
                                            <li class="user-profile__info-item text-muted row align-items-center">
                                                <label class="user-profile__info-label form-label col-4" for="fullname">
                                                    Tên
                                                </label>
                                                <div class="col-8">
                                                    <input type="text" class="user-profile__info-input form-control" id="fullname" value="Minh Hung">
                                                </div>
                                            </li>
                                            <li class="user-profile__info-item text-muted row align-items-center">
                                                <label class="user-profile__info-label form-label col-4" for="email">
                                                    Email
                                                </label>
                                                <div class="col-8 d-flex">
                                                    <input type="text" class="user-profile__info-input form-control form-control-plaintext" id="email" value="minhhungwp12@gmail.com">
                                                    <button class="input-edit-control" type="button">Thay đổi</button>
                                                </div>
                                            </li>
                                            <li class="user-profile__info-item text-muted row align-items-center">
                                                <label class="user-profile__info-label form-label col-4" for="email">
                                                    Số Điện Thoại
                                                </label>
                                                <div class="col-8 d-flex">
                                                    <input type="text" class="user-profile__info-input form-control form-control-plaintext" id="email" value="0123456789">
                                                    <button class="input-edit-control" type="button">Thêm</button>
                                                </div>
                                            </li>
                                            <li class="user-profile__info-item text-muted row align-items-center">
                                                <label class="user-profile__info-label form-label col-4" for="email">
                                                    Giới tính
                                                </label>
                                                <div class="col-8 d-flex align-items-center">
                                                    <div class="form-group me-3">
                                                        <input class="form-check-input" type="radio" value="male" id="gender-male" name="gender" checked>
                                                        <label class="form-check-label" for="gender-male">Nam</label>
                                                    </div>
                                                    <div class="form-group me-3">
                                                        <input class="form-check-input" type="radio" value="female" id="gender-female" name="gender" checked>
                                                        <label class="form-check-label" for="gender-female">Nữ</label>
                                                    </div>
                                                    <div class="form-group">
                                                        <input class="form-check-input" type="radio" value="other" id="gender-other" name="gender" checked>
                                                        <label class="form-check-label" for="gender-other">Khác</label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="user-profile__info-item text-muted row align-items-center">
                                                <label class="user-profile__info-label form-label col-4" for="email">
                                                    Ngày sinh
                                                </label>
                                                <div class="col-8 d-flex">
                                                    <select class="form-select me-2" id="form-select-day">
                                                        <option value="1" selected>1</option>
                                                    <c:forEach var = "i" begin = "2" end = "31">
                                                        <option value="<c:out value = "${i}"/>"><c:out value = "${i}"/></option>
                                                    </c:forEach>
                                                </select>
                                                <select class="form-select me-2" id="form-select-month">
                                                    <option value="1" selected>Tháng 1</option>
                                                    <c:forEach var = "i" begin = "2" end = "12">
                                                        <option value="<c:out value = "${i}"/>">Tháng <c:out value = "${i}"/></option>
                                                    </c:forEach>
                                                </select>
                                                <select class="form-select" id="form-select-year">
                                                    <option value="1" selected>2021</option>
                                                    <c:forEach var = "i" begin = "1910" end = "2021">
                                                        <option value="<c:out value = "${i}"/>"><c:out value = "${i}"/></option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </li>
                                    </div>
                                    <div class="col-4">
                                        <div class="user-profile__avatar-control text-center d-flex flex-column align-items-center">
                                            <img src="https://cf.shopee.vn/file/1d74524ec09542f944ad95a2a6fd111d_tn" alt="user avatar" class="img-fluid rounded-circle mb-3">
                                            <input type="file" id="avatar-chooser-input" name="avatar">
                                            <label for="avatar-chooser-input" class="btn btn-outline-secondary">Chọn Ảnh</label>
                                            <div class="avatar-choose-constraints text-muted mt-2">
                                                <div>Dụng lượng file tối đa 1 MB</div>
                                                <div>Định dạng:.JPEG, .PNG</div>
                                            </div>
                                        </div>
                                    </div>
                                </ul>

                                <div class="text-end">
                                    <button class="btn btn-primary ms-auto" type="submit">Lưu</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="components/footer.jsp"></jsp:include>

    </body>
</html>