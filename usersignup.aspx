<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="banking_m_passbook.WebForm5" %>

<html>
<head>
    <meta charset="utf-8" />
    <title>Sign Up | XYZ Bank</title>
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
                                <div class="col-lg-5">
                                    <div class="p-lg-5 p-4 auth-one-bg h-100">
                                        <div class="bg-overlay"></div>
                                        <div class="position-relative h-100 d-flex flex-column">
                                            <div class="mb-4 heading-wt">XYZ Bank</div>
                                            <div class="mt-auto">
                                                <img src="assets/images/banking.jpg" class="cover-signup" height="563" width="370" />"
                                               
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end col -->

                                <div class="col-lg-7">
                                    <form runat="server">
                                        <div class="p-lg-5 p-4">
                                            <div>
                                                <h5 class="text-primary">Register Account</h5>
                                            </div>

                                            <div class="mt-4">

                                                <div class="mb-3">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <label for="TextBox1" class="form-label">Full Name <span class="text-danger">*</span></label>
                                                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name" name="name" aria-describedby="name-format" required="true" pattern="([a-zA-Z][a-zA-Z ]+[a-zA-Z])"></asp:TextBox>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label for="TextBox2" class="form-label">Date of  Birth <span class="text-danger">*</span></label>
                                                            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date" TextMode="Date" required="true"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mb-3">
                                                    <div class="row">
                                                        <div class="col-md-6">

                                                            <label for="TextBox3" class="form-label">Contact No. <span class="text-danger">*</span></label>
                                                            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Enter 10 Digit Mobile No." pattern="[0-9]{10}" requred="true" MaxLength="10"></asp:TextBox>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label for="TextBox4" class="form-label">Email Id <span class="text-danger">*</span></label>
                                                            <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email" required="true"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mb-3">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <label for="DropDownList1" class="form-label">State <span class="text-danger">*</span></label>
                                                            <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" required="true">
                                                                <asp:ListItem Text="Select" Value="Select" />
                                                                <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                                                                <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                                                                <asp:ListItem Text="Assam" Value="Assam" />
                                                                <asp:ListItem Text="Bihar" Value="Bihar" />
                                                                <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                                                                <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                                                <asp:ListItem Text="Goa" Value="Goa" />
                                                                <asp:ListItem Text="Gujarat" Value="Gujarat" />
                                                                <asp:ListItem Text="Haryana" Value="Haryana" />
                                                                <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                                                                <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                                                                <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                                                                <asp:ListItem Text="Karnataka" Value="Karnataka" />
                                                                <asp:ListItem Text="Kerala" Value="Kerala" />
                                                                <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                                                                <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                                                <asp:ListItem Text="Manipur" Value="Manipur" />
                                                                <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                                                                <asp:ListItem Text="Mizoram" Value="Mizoram" />
                                                                <asp:ListItem Text="Nagaland" Value="Nagaland" />
                                                                <asp:ListItem Text="Odisha" Value="Odisha" />
                                                                <asp:ListItem Text="Punjab" Value="Punjab" />
                                                                <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                                                <asp:ListItem Text="Sikkim" Value="Sikkim" />
                                                                <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                                                                <asp:ListItem Text="Telangana" Value="Telangana" />
                                                                <asp:ListItem Text="Tripura" Value="Tripura" />
                                                                <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                                                                <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                                                                <asp:ListItem Text="West Bengal" Value="West Bengal" />
                                                            </asp:DropDownList>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label for="TextBox6" class="form-label">City <span class="text-danger">*</span></label>
                                                            <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City" required="true"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mb-3">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <label for="TextBox7" class="form-label">Pincode <span class="text-danger">*</span></label>
                                                            <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Pincode"  Maxlength="6" required="true" pattern="[0-9]{6}"></asp:TextBox>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <label for="TextBox5" class="form-label">Full Address <span class="text-danger">*</span></label>
                                                            <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2" required="true"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <hr />
                                                <div>
                                                    <h5 class="text-primary">Mobile Login Credentials</h5>
                                                </div>

                                                <div class="mt-4">
                                                    <div class="mb-3">
                                                        <div class="row">
                                                            <div class="col-md-4">
                                                                <label for="TextBox8" class="form-label">User ID <span class="text-danger">*</span></label>
                                                                <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="User ID"  required="true"></asp:TextBox>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <label for="TextBox9" class="form-label">M-Pin <span class="text-danger">*</span></label>
                                                                <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="6-digit" TextMode="Password" Minlength="6" MaxLength="6"  required="true" ></asp:TextBox>
                                                               
                                                            </div>
                                                            <div class="col-md-4">
                                                                <label for="TextBox10" class="form-label">Confirm M-Pin <span class="text-danger">*</span></label>
                                                                <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="6-digit" TextMode="Password" Minlength="6" MaxLength="6" required="true" ></asp:TextBox>
                                                                
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mt-4">
                                                    <asp:Button class="btn btn-success w-100" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click1" />
                                                </div>
                                            </div>
                                            
                                            <div class="mt-5 text-center">
                                                <p class="mb-0">Already have an account ? <a href="userlogin.aspx" class="fw-semibold text-primary text-decoration-underline">Signin</a> </p>
                                            </div>
                                        </div>
                                    </form>
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
            <div class="container">
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
</body>
</html>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/css/usersignup.css" rel="stylesheet" />
    <div class="signupbgimg">
               <div class="container 1">
      <div class="row">
          <center>
          <div class="col-md-8">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>User Registration</h4>
                           <asp:label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="blank"></asp:label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"  name="name" value="" aria-describedby="name-format" required="true" pattern="([a-zA-Z][a-zA-Z ]+[a-zA-Z])"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Date of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date" TextMode="Date" required="true"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="enter your 10 digit mobile number"   pattern="[0-9]{10}" requred="true" MaxLength="10"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email" required="true"   ></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>State</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" required="true">
                              <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                              <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                              <asp:ListItem Text="Assam" Value="Assam" />
                              <asp:ListItem Text="Bihar" Value="Bihar" />
                              <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                              <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                              <asp:ListItem Text="Goa" Value="Goa" />
                              <asp:ListItem Text="Gujarat" Value="Gujarat" />
                              <asp:ListItem Text="Haryana" Value="Haryana" />
                              <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                              <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                              <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                              <asp:ListItem Text="Karnataka" Value="Karnataka" />
                              <asp:ListItem Text="Kerala" Value="Kerala" />
                              <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                              <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                              <asp:ListItem Text="Manipur" Value="Manipur" />
                              <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                              <asp:ListItem Text="Mizoram" Value="Mizoram" />
                              <asp:ListItem Text="Nagaland" Value="Nagaland" />
                              <asp:ListItem Text="Odisha" Value="Odisha" />
                              <asp:ListItem Text="Punjab" Value="Punjab" />
                              <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                              <asp:ListItem Text="Sikkim" Value="Sikkim" />
                              <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                              <asp:ListItem Text="Telangana" Value="Telangana" />
                              <asp:ListItem Text="Tripura" Value="Tripura" />
                              <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                              <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                              <asp:ListItem Text="West Bengal" Value="West Bengal" />
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>City</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City" required="true"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Pincode</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Pincode" TextMode="Number" required="true" pattern="[0-9]{6}"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2" required="true"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge badge-pill badge-info">Blank</span>
                           <h4>Create Login Credentials</h4>
                        </center>
                     </div>
                  </div>
                   <hr>
                  <div class="row">
                      
                     <div class="col-md-4">
                        
                        <label>User ID</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="User ID" MaxLength="4" pattern="[0-9]" required="true" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                         
                        <label>Create M-pin</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="6-digit" TextMode="Password" MaxLength="6" pattern="[1-9]" required="true"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                         
                        <label>Confirm M-pin</label> 
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="6-digit" TextMode="Password" MaxLength="6" required="true"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <hr>
                  <div class="row">
                     <div class="col-8 mx-auto">
                        <center>
                            <div class="row">
                           <div class="form-group">
                              <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Register" OnClick="Button1_Click1" />
                           </div>
                           </div>
                          
                        </center>
                     </div>
                  </div>
               </div>
            </div>
         </div>
          </center>
         </div>
   </div>
        </div>
</asp:Content>--%>
