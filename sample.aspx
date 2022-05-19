<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sample.aspx.cs" Inherits="banking_m_passbook.WebForm11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/css/sample.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                <h4 class="mb-sm-0">Sample</h4>

                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item"><a href="homepage.aspx">Dashboard</a></li>
                        <li class="breadcrumb-item active">Sample</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- end page title -->
    <%--start page content--%>
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header align-items-center d-flex">
                    <h4 class="card-title mb-0 flex-grow-1">Sample</h4>
                </div>
                <!-- end card header -->

                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <div class="h-100">
                                <div class="row">
                                    <div class="row container-fluid main-section">
                                        <div class="col hero-textbox">
                                            <label>User ID</label>
                                            <div class="row">
                                                <div class="clo-md-6">
                                                    <div class="form-group">
                                                        <asp:TextBox CssClass="form-control" ID="userid" runat="server" placeholder="User ID" MaxLength="15"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <label>M-Pin</label>
                                            <div class="form-group">
                                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password" MaxLength="6"></asp:TextBox>
                                            </div>
                                            <br />
                                            <div class="form-group">
                                                <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" />
                                            </div>
                                            <br />
                                            <div class="form-group">
                                                <a href="usersignup.aspx">
                                                    <input class="btn btn-info btn-block btn-lg" id="Button2" type="button" value="Sign Up" /></a>
                                            </div>
                                            <div class="col-lg help-box">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <a href="#" target="_blank">Forgot Credentials?</a><br>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <a href="#" target="_blank">Need Help?</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg greet-msg-box">
                                            <h1>WELCOME to XYZ Bank</h1>
                                            <p>One Place For All Your Solutions</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end card-body -->
            </div>
            <!-- end card -->
        </div>
        <!-- end col -->
    </div>
    <%--end page content--%>
</asp:Content>
