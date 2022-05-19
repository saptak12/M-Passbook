<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="forgetpassword.aspx.cs" Inherits="banking_m_passbook.WebForm7" %>

<html lang="en" data-layout="vertical" data-topbar="light" data-sidebar="dark" data-sidebar-size="lg">
<head>
    <meta charset="utf-8" />
    <title>Forget Password | XYZ Bank</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="assets/images/favicon.ico">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/app.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/custom.min.css" rel="stylesheet" type="text/css" />
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
                                        <h5 class="text-primary">Forgot Password?</h5>
                                        <p class="text-muted">Reset password with XYZ Bank</p>

                                        <div class="mt-2 text-center">
                                            <lord-icon
                                                src="https://cdn.lordicon.com/rhvddzym.json"
                                                trigger="loop"
                                                colors="primary:#0ab39c"
                                                class="avatar-xl">
                                            </lord-icon>
                                        </div>

                                        <div class="alert alert-borderless alert-warning text-center mb-2 mx-2" role="alert">
                                            Enter your email and instructions will be sent to you!                                           
                                        </div>
                                        <div class="text-center mt-20">
                                            <asp:Label ID="lblSuccessMessage" runat="server" class="alert alert-borderless alert-success text-center mb-2 mx-2" role="alert" Visible="false" />
                                        </div>
                                        <div class="text-center mt-20">
                                            <asp:Label ID="lblErrorMessage" runat="server" class="alert alert-borderless alert-danger text-center mb-2 mx-2" role="alert" Visible="false" />
                                        </div>

                                        <div class="p-2 mt-20">
                                            <form runat="server">
                                                <div class="mb-4">
                                                    <label class="form-label">Email</label>
                                                    <asp:TextBox ID="Emailtxt" class="form-control" runat="server" placeholder="Enter Your Registerd Email" TextMode="Email"></asp:TextBox>
                                                </div>

                                                <div class="text-center mt-4">
                                                    <asp:Button ID="Button1" runat="server" Text="Send Reset Link" Class="btn btn-success w-100" OnClick="Button1_Click" />
                                                </div>
                                            </form>
                                            <!-- end form -->
                                        </div>

                                        <div class="mt-5 text-center">
                                            <p class="mb-0">Wait, I remember my password... <a href="userlogin.aspx" class="fw-semibold text-primary text-decoration-underline">Click here </a></p>
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
                            <p class="mb-0">
                                &copy;
                                <script>document.write(new Date().getFullYear())</script>
                                XYZ Bank
                            </p>
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
    <script src="assets/js/lord-icon-2.1.0.js"></script>
</body>
</html>
