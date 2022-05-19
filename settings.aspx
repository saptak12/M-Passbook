<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="settings.aspx.cs" Inherits="banking_m_passbook.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="settings.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                <h4 class="mb-sm-0">Setting</h4>

                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item"><a href="homepage.aspx">Dashboard</a></li>
                        <li class="breadcrumb-item active">Setting</li>
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
                    <h4 class="card-title mb-0 flex-grow-1">Setting</h4>
                </div>
                <!-- end card header -->

                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <div class="h-100">
                                <div class="row">
                                    
                                    <div class="col-xl-4 col-md-4">
                                        <!-- card -->
                                        <div class="card card-animate">
                                            <a href="change mpin.aspx" class="card-body">
                                                <div class="d-flex align-items-end justify-content-between mt-4">
                                                    <div class="fs-22 fw-semibold ff-secondary mb-4 align-self-center">Change M-Pin</div>
                                                </div>
                                            </a>
                                            <!-- end card body -->
                                        </div>
                                        <!-- end card -->
                                    </div>
                                    <!-- end col -->

                                    
                                    <!-- end col -->

                                   
                                    <!-- end col -->
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
    <%--<link href="settings.css" rel="stylesheet" />
    <div class="jumbotron">
        <h1>SETTINGS </h1>
    </div>
    <div class="row">
        <p></p>
                <div class="btn d-grid gap-2">
                    <button class="btn btn-primary" type="button">Change Password</button>
                </div>
        <p></p>
                <div class="btn d-grid gap-2">
                    <button class="btn btn-primary" type="button">Change Language</button>
                </div>
        <p></p>
               <div class="btn d-grid gap-2">
                    <button class="btn btn-primary" type="button">Change Language</button>
                </div>
    </div>--%>
</asp:Content>
