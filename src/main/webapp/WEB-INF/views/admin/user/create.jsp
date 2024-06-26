<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="WuuBangDev - Dự án Bookstore" />
                <meta name="author" content="WuuBang - Dev" />
                <title>Users Create</title>
                <link href="/admin/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <!-- Latest compiled and minified CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <!-- Latest compiled JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <script>
                    $(document).ready(() => {
                        const avatarFile = $("#avatarFile");
                        avatarFile.change(function (e) {
                            const imgURL = URL.createObjectURL(e.target.files[0]);
                            $("#avatarPreview").attr("src", imgURL);
                            $("#avatarPreview").css({ "display": "block" });
                        });
                    });
                </script>
            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />

                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">Table Users</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                                    <li class="breadcrumb-item"><a href="/admin/user">Table users</a></li>
                                    <li class="breadcrumb-item active">Create User</li>
                                </ol>
                                <form:form class="row" action="/admin/user/create" method="post"
                                    modelAttribute="newUser">
                                    <div class="mb-3 col-md-6">
                                        <label for="email" class="form-label">Email:</label>
                                        <form:input type="email" class="form-control" id="email" path="email" />
                                    </div>
                                    <div class="mb-3 col-md-6">
                                        <label for="password" class="form-label">Password:</label>
                                        <form:input type="password" class="form-control" id="password"
                                            path="password" />
                                    </div>
                                    <div class="mb-3 col-md-6">
                                        <label for="fullName" class="form-label">Full name:</label>
                                        <form:input type="text" class="form-control" id="fullName" path="fullName" />
                                    </div>
                                    <div class="mb-3 col-md-6">
                                        <label for="address" class="form-label">Address:</label>
                                        <form:input type="text" class="form-control" id="address" path="address" />
                                    </div>
                                    <div class="mb-3 col-md-6">
                                        <label for="dob" class="form-label">Ngày sinh:</label>
                                        <form:input type="date" class="form-control" id="dob" path="dob" />
                                    </div>

                                    <div class="mb-3 col-md-6">
                                        <label for="phone" class="form-label">Phone number:</label>
                                        <form:input type="text" class="form-control" id="phone" path="phone" />
                                    </div>
                                    <div class="mb-3 col-md-6 m-auto">
                                        <div class="mb-3">
                                            <label for="avatarFile" class="form-label">Avatar:</label>
                                            <input class="form-control" type="file" id="avatarFile" path="avatar"
                                                accept=".png, .jpg, .jpeg" name="avatarFile" />
                                        </div>
                                        <div class="mb-3">
                                            <img style="max-height: 250px; display: none;" alt="avatar preview"
                                                id="avatarPreview" />
                                        </div>
                                        <div class="mb-3 d-flex">
                                            <input type="checkbox" class="form-check-input" id="isChecked" />
                                            <label class="form-check-label mx-2" for="isChecked">Đồng ý
                                                với điều khoản đăng
                                                ký</label>
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Đăng ký</button>
                                </form:form>
                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="/admin/js/scripts.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
                    crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
                    crossorigin="anonymous"></script>
            </body>

            </html>