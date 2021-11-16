<%-- 
    Document   : auth-modals
    Created on : Nov 13, 2021, 12:13:04 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Login modal -->
<div class="modal fade" id="login-modal">
    <div class="modal-dialog">  
        <div class="modal-content">

            <div class="modal-header text-center">
                <h4 class="modal-title ">Đăng nhập</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <div class="modal-body">
                <form action="" class="login-form mx-3" id="login-form">
                    <div class="my-3">
                        <input type="text" name="username" id="login-username" class="form-control"
                               placeholder="Email">
                    </div>
                    <div class="my-3">
                        <input type="password" name="password" id="login-password" class="form-control"
                               placeholder="Mật khẩu">
                    </div>
                </form>
            </div>


            <div class="modal-footer">
                <button type="button" class="btn btn-primary mx-5">Đăng nhập</button>
            </div>

        </div>
    </div>
</div>

<!-- register modal -->
<div class="modal fade" id="register-modal">
    <div class="modal-dialog">  
        <div class="modal-content">


            <div class="modal-header text-center">
                <h4 class="modal-title ">Đăng ký</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>


            <div class="modal-body">
                <form action="" class="register-form"  id="register-form">
                    <div class="my-3">
                        <input type="email" name="username" id="regiser-username" class="form-control"
                               placeholder="Email">
                    </div>
                    <div class="my-3">
                        <input type="password" name="password" id="register-password" class="form-control"
                               placeholder="Mật khẩu">
                    </div>
                    <div class="my-3">
                        <input type="password" name="password" id="register-password-confirm" class="form-control"
                               placeholder="Nhập lại mật khẩu">
                    </div>
                    <div class="my-3 register-policy">
                        Bằng việc đăng kí, bạn đã đồng ý với Shopyy về 
                        <a href="">Điều khoản dịch vụ</a>
                        &
                        <a href="">Chính sách bảo mật</a>
                    </div>
                </form>
            </div>


            <div class="modal-footer">
                <button type="button" class="btn btn-outline-primary">Đăng ký</button>
            </div>

        </div>
    </div>
</div>
