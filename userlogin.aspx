<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="banking_m_passbook.WebForm4" %>

<html lang="en" data-layout="vertical" data-topbar="light" data-sidebar="dark" data-sidebar-size="lg">
<head>
    <meta charset="utf-8" />
    <title>Sign In | XYZ Bank</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="assets/images/favicon.ico">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/app.min.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <!-- auth-page wrapper -->
    <div class="auth-page-wrapper auth-bg-cover py-5 d-flex justify-content-center align-items-center min-vh-100">
        <div class="bg-overlay"></div>
        <!-- auth-page content -->
        <div class="auth-page-content overflow-hidden pb-0">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card overflow-hidden">
                            <div class="row g-0">
                                <div class="col-lg-6">
                                    <div class="p-lg-5 p-4 auth-one-bg h-100">
                                        <div class="bg-overlay"></div>
                                        <div class="position-relative h-100 d-flex flex-column">
                                            <div class="mb-4 heading-wt">XYZ Bank</div>
                                            <div class="mt-auto">
                                                <img src="assets/images/banking.jpg" class="cover" />"
                                               
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end col -->

                                <div class="col-lg-6">
                                    <div class="p-lg-5 p-4">
                                        <div>
                                            <h5 class="text-primary">Welcome Back!</h5>
                                            <p class="text-muted">Sign in to continue to XYZ Bank.</p>
                                        </div>

                                        <div class="mt-4">
                                            <form runat="server">

                                                <div class="mb-3">
                                                    <label for="userid" class="form-label">User Id</label>
                                                    <asp:TextBox CssClass="form-control" ID="userid" runat="server" placeholder="Enter User ID"></asp:TextBox>
                                                </div>

                                                <div class="mb-3">
                                                    <div class="float-end">
                                                        <a href="forgetpassword.aspx" class="text-muted">Forgot password?</a>
                                                    </div>
                                                    <label class="form-label" for="TextBox2">M-pin</label>
                                                    <div class="position-relative auth-pass-inputgroup mb-3">
                                                        <asp:TextBox CssClass="form-control pe-5" ID="TextBox2" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                                                        <%--<button class="btn btn-link position-absolute end-0 top-0 text-decoration-none text-muted" type="button" id="password-addon"><i class="ri-eye-fill align-middle"></i></button>--%>
                                                    </div>
                                                </div>

                                                <div class="mt-4">
                                                    <asp:Button class="btn btn-success w-100" ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click1" />
                                                </div>
                                                <asp:Label ID="lbl1_msg" runat="server"  ></asp:Label>
                                            </form>
                                        </div>

                                        <div class="mt-5 text-center">
                                            <p class="mb-0">Don't have an account ? <a href="usersignup.aspx" class="fw-semibold text-primary text-decoration-underline">Signup</a> </p>
                                        </div>
                                    </div>
                                </div>
                                <!-- end col -->
                            </div>
                            <!-- end row -->
                        </div>
                        <!-- end card -->
                    </div>
                    <!-- end col -->

                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>
        <!-- end auth page content -->

        <!-- footer -->
        <footer class="footer">
            <div class="container mt-20">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="text-center">
                            <p class="mb-0">&copy;
                                <script>document.write(new Date().getFullYear())</script>
                                XYZ Bank</p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- end Footer -->
    </div>
    <!-- end auth-page-wrapper -->

    <!-- JAVASCRIPT -->
    <script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>
