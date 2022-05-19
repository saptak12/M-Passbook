<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="change mpin.aspx.cs" Inherits="banking_m_passbook.WebForm10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                <h4 class="mb-sm-0">Change M-Pin</h4>

                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item"><a href="homepage.aspx">Dashboard</a></li>
                        <li class="breadcrumb-item active">Change M-Pin</li>
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
                    <h4 class="card-title mb-0 flex-grow-1">Change M-Pin</h4>
                </div>
                <!-- end card header -->

                <div class="card-body">
                    <div class="row">
                        <div class="mb-3 col-md-3 col-md-offset-9">
                            <label for="TextBoxOldpassword" class="form-label">Current M-Pin <span class="text-danger">*</span></label>
                            <asp:TextBox CssClass="form-control" ID="TextBoxOldpassword" runat="server" placeholder="Enter Current M-Pin" TextMode="Password" MaxLength="6" required="true">

                            </asp:TextBox> 
                            
                        </div>
                    </div>
                    <div class="row">
                        <div class="mb-3 col-md-3 col-md-offset-9">
                            <label for="TextBoxNewpassword" class="form-label">New M-Pin <span class="text-danger">*</span></label>
                            <asp:TextBox CssClass="form-control" ID="TextBoxNewpassword" runat="server" placeholder="Enter New M-Pin" TextMode="Password" MaxLength="6" required="true"></asp:TextBox>
                             
                        </div>
                    </div>
                    <div class="row">
                        <div class="mb-3 col-md-3 col-md-offset-9">
                            <label for="TextBoxConfirmnewpassword" class="form-label">Confirm New M-Pin <span class="text-danger">*</span></label>
                            <asp:TextBox CssClass="form-control" ID="TextBoxConfirmnewpassword" runat="server" placeholder="Enter Confirm New M-Pin" TextMode="Password" MaxLength="6" required="true"></asp:TextBox>
                            
       
                        </div>
                    </div>
                    <div class="mt-4">
                          <asp:Button ID="ButtonChangePassword" runat="server" CssClass="btn btn-success" Text="Change Password" OnClick="ButtonChangePassword_Click"
                            NewPasswordRegularExpression="^[\s\S]{6,}$" NewPasswordRegularExpressionErrorMessage="Password must be of minimum 6 characters." CancelDestinationPageUrl="homepage.aspx" />
                    </div>
                    <asp:Label ID="lbl_msg" runat="server"  ></asp:Label>
                </div>
                <!-- end card-body -->
            </div>
            <!-- end card -->
        </div>
        <!-- end col -->
    </div>  
    <%--end page content--%>
</asp:Content>
