<%-- 
    Document   : book-detail
    Created on : Jan 3, 2022, 9:34:05 AM
    Author     : Admin
--%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <%@include file="/jsp/includes/stylesheet.jsp" %>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css" rel="stylesheet"/>
        <link href="<c:url value="/css/staff/book-detail.css"/>" rel="stylesheet" />

    </head>
    <body>
        <div class="main d-flex vh-100">
            <%@include file="/jsp/staff/components/sidebar.jsp" %>
            <div class="main-content flex-fill bg-light">
                <%@include file="/jsp/staff/components/header.jsp" %>
                <div class="book-detail px-3">
                    <div class="container-fluid">
                        <div class="book-detail__header d-flex align-items-center justify-content-between mb-3 mt-4">
                            <h3 class="text-capitalize fs-4 mb-0">Thêm sách</h3>
                        </div>
                        <div class="book-detail__form">
                            <form action="<c:url value="/staff/book/add" />" method="POST">
                                <div class="form-body">
                                    <div class="row">
                                        <div class="col">
                                            <div class="general-info rounded shadow-sm px-3 pt-4 pb-2 bg-white">
                                                <h4 class="text-capitalize fs-5">Thông tin chung</h4>
                                                <div class="form-group">
                                                    <label for="book-isbn" class="form-label">ISBN:</label>
                                                    <input class="form-control" type="text" id="book-isbn" name="isbn">
                                                </div>
                                                <div class="form-group">
                                                    <label for="book-title" class="form-label">Tiêu đề:</label>
                                                    <input class="form-control" type="text" id="book-title" name="title">
                                                </div>
                                                <div class="form-group">
                                                    <label for="book-page" class="form-label">Số trang:</label>
                                                    <input class="form-control" type="number" id="book-page" name="page" min="1">
                                                </div>
                                                <div class="form-group">
                                                    <label for="book-language" class="form-label">Ngôn ngữ:</label>
                                                    <input class="form-control" type="text" id="book-language" name="language">
                                                </div>
                                                <div class="form-group">
                                                    <label for="book-summary" class="form-label">Tóm tắt:</label>
                                                    <textarea class="form-control" id="book-summary" name="summary" rows="4"></textarea>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col">
                                            <div class="publish-info rounded shadow-sm px-3 pt-4 pb-2 bg-white mb-2">
                                                <h4 class="text-capitalize fs-5">Thông tin xuất bản</h4>
                                                <div class="form-group">
                                                    <label for="book-author" class="form-label">Tác giả:</label>
                                                    <div class="book-author-control" id="book-author">
                                                        <input type="hidden" name="authors" id="input-authors"/>
                                                        <ul class="author-list list-unstyled mb-0 d-flex align-items-center flex-wrap">
                                                            <li class="author-item" data-bs-toggle="tooltip" data-bs-placement="top" title="Thêm tác giả">
                                                                <button 
                                                                    type="button"
                                                                    class="author-control d-flex align-items-center justify-content-center border-0 outline-none py-2 bg-transparent text-primary" 
                                                                    data-bs-toggle="modal"
                                                                    data-bs-target="#author-modal"
                                                                    >
                                                                    <i class="fas fa-plus"></i>
                                                                </button>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="book-publisher" class="form-label">Nhà xuất bản:</label>
                                                    <input class="form-control" type="text" id="book-publisher" name="publisher">
                                                </div>
                                                <div class="form-group">
                                                    <label for="book-publish-year" class="form-label me-3">Năm xuất bản:</label>
                                                    <input type="text" class="datepicker form-control d-inline-block w-auto ps-3" 
                                                           id="book-publish-year" name="publishyear">
                                                </div>
                                            </div>

                                            <div class="storage-info rounded shadow-sm px-3 pt-4 pb-2 bg-white">
                                                <h4 class="text-capitalize fs-5">Thông tin nhập hàng</h4>
                                                <div class="form-group">
                                                    <label for="book-price" class="form-label">Giá nhập (VND):</label>
                                                    <input class="form-control" type="text" id="book-price" name="price">
                                                </div>
                                                <div class="form-group">
                                                    <label for="book-remaining" class="form-label">Kho:</label>
                                                    <input class="form-control" type="number" id="book-remaining" name="remaining" min="0">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-btn text-end mt-3 mb-3">
                                    <button class="btn btn-secondary me-3">Hủy</button>
                                    <button class="btn btn-primary min-w-150" type="submit">Lưu</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" tabindex="-1" id="author-modal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Tác giả</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <ul class="list-unstyled" id="authors-container">
                            <c:forEach var="author" items="${authors}">
                                <li class="d-flex align-items-center">
                                    <input type="checkbox" data-js-id="${author.id}" data-js-name="${author.name}" id="${author.id}" style="width: 20px; height: 20px;"/>
                                    <label class="ms-2 py-2  user-select-none" for="${author.id}">
                                        ${author.name}
                                    </label>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="modal-footer">
                        <a href="<c:url value="/staff/book/author/add"/>" class="btn btn-secondary">Thêm tác giả mới</a>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                        <button type="button" class="btn btn-primary" id="btn-select-authors" data-bs-dismiss="modal">Chọn</button>
                    </div>
                </div>
            </div>
        </div>

        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>

        <!--render bootstrap year picker-->
        <script>
            $('body').on('focus', ".datepicker", function () {
                if ($(this).hasClass('hasDatepicker') === false) {
                    $(this).datepicker({
                        minViewMode: 2,
                        format: 'yyyy'
                    });
                }
            });
        </script>

        <!--activate bootstrap tooltip-->
        <script>
            var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
            var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
                return new bootstrap.Tooltip(tooltipTriggerEl)
            })
        </script>

        <script>
            const btnSelectAuthor = document.getElementById('btn-select-authors');
            const inputAuthors = document.getElementById('input-authors');
            const checkboxes = Array.from(document.querySelectorAll('#authors-container input'));
            const authorListContainer = document.querySelector('.author-list');

            btnSelectAuthor.addEventListener('click', () => {
                const [selectedAuthorsId, selectedAuthorsName] = checkboxes.reduce((total, checkbox) => {
                    if (checkbox.checked) {
                        total[0].push(+checkbox.dataset.jsId);
                        total[1].push(checkbox.dataset.jsName);
                    }
                    return total;
                }, [[], []])
                inputAuthors.value = JSON.stringify(selectedAuthorsId);
                selectedAuthorsName.forEach((name) => {
                    const liEle = document.createElement('li');
                    liEle.textContent = name + ';';
                    liEle.className = 'author-item ms-2';
                    authorListContainer.insertAdjacentElement('beforeend', liEle);
                })

            });
        </script>
    </body>
</html>
