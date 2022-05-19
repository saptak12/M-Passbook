<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="changepassword.aspx.cs" Inherits="banking_m_passbook.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                <h4 class="mb-sm-0">Change Password</h4>

                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item"><a href="homepage.aspx">Dashboard</a></li>
                        <li class="breadcrumb-item active">Change Password</li>
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
                    <h4 class="card-title mb-0 flex-grow-1">Change Password</h4>
                </div>
                <!-- end card header -->

                <div class="card-body">
                    <div class="row">
                        <div class="mb-3 col-md-3 col-md-offset-9">
                            <label for="TextBoxOldpassword" class="form-label">Current Password <span class="text-danger">*</span></label>
                            <asp:TextBox CssClass="form-control" ID="TextBoxOldpassword" runat="server" placeholder="Enter Current Password"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"   
            ControlToValidate="TextBoxOldpassword"   
            ErrorMessage="Please enter Current password"></asp:RequiredFieldValidator> 
                        </div>
                    </div>
                    <div class="row">
                        <div class="mb-3 col-md-3 col-md-offset-9">
                            <label for="TextBoxNewpassword" class="form-label">New Password <span class="text-danger">*</span></label>
                            <asp:TextBox CssClass="form-control" ID="TextBoxNewpassword" runat="server" placeholder="Enter New Password"></asp:TextBox>
                           
                        </div>
                    </div>
                    <div class="row">
                        <div class="mb-3 col-md-3 col-md-offset-9">
                            <label for="TextBoxConfirmnewpassword" class="form-label">Confirm New Password <span class="text-danger">*</span></label>
                            <asp:TextBox CssClass="form-control" ID="TextBoxConfirmnewpassword" runat="server" placeholder="Enter Confirm New Password"></asp:TextBox>
                             
  
      
                        </div>
                    </div>
                    <div class="mt-4">
                          <asp:Button ID="ButtonChangePassword" runat="server" CssClass="btn btn-success" Text="Change Password" OnClick="ButtonChangePassword_Click"
                            NewPasswordRegularExpression="^[\s\S]{5,}$" NewPasswordRegularExpressionErrorMessage="Password must be of minimum 5 characters." CancelDestinationPageUrl="homepage.aspx" />
                    </div>
                    <asp:Label ID="lbl_pwdmsg" runat="server" Text="Label"></asp:Label>
                </div>
                <!-- end card-body -->
            </div>
            <!-- end card -->
        </div>
        <!-- end col -->
    </div>  
    <%--end page content--%>

</asp:Content>
