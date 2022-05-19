<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="loans.aspx.cs" Inherits="banking_m_passbook.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                <h4 class="mb-sm-0">Loans</h4>

                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item"><a href="homepage.aspx">Dashboard</a></li>
                        <li class="breadcrumb-item active">Loans</li>
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
                    <h4 class="card-title mb-0 flex-grow-1">Loans
                    </h4>
                </div>
                <!-- end card header -->

                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <div class="h-100">
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
