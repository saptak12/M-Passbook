<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="passbook.aspx.cs" Inherits="banking_m_passbook.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="css/css/passbook.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                <h4 class="mb-sm-0">Passbook</h4>

                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item"><a href="homepage.aspx">Dashboard</a></li>
                        <li class="breadcrumb-item active">Passbook</li>
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
                    <h4 class="card-title mb-0 flex-grow-1">Passbook</h4>
                </div>
                <!-- end card header -->

                <div class="card-body">
                    <div class="row">
                        <div class="row g-2">
                            <div class="col-xl-4 col-md-6">
                                <div class="search-box">
                                    <asp:TextBox CssClass="form-control" ID="useridd" runat="server" ViewStateMode="Disabled" Visible="False"></asp:TextBox>
                                    <asp:TextBox type="text" class="form-control search" ID="srchtxt" runat="server" placeholder="Search..."></asp:TextBox>
                                </div>
                            </div>
                            <!--end col-->
                            <div class="col-xl-1 col-md-4">
                                <asp:Button CssClass="btn btn-success w-100" ID="srchbtn" runat="server" Text="submit" OnClick="srchbtn_Click" />

                            </div>
                        </div>
                    </div>
                    <!-- end card-body -->
                </div>
                <!-- end card -->
                <div class="card-body">
                    <div class="table-responsive table-card">
                        <asp:GridView ID="gvpassbook" runat="server" Enabled="false" AutoGenerateColumns="false"
                            CssClass="table align-middle table-nowrap" AllowSorting="true" SortExprssion="boundfield">
                            <Columns>
                                <asp:BoundField DataField="user_id" HeaderText="user id" />
                                <asp:BoundField DataField="account_name" HeaderText="account name" />
                                <asp:BoundField DataField="Date" HeaderText="Date" />
                                <asp:BoundField DataField="credit" HeaderText="credit" />
                                <asp:BoundField DataField="debit" HeaderText="debit" />
                                <asp:BoundField DataField="balance" HeaderText="balance" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
            <!-- end col -->
        </div>
    </div>
    <%--end page content--%>
</asp:Content>
