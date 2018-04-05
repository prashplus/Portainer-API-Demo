<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="icon" type="image/png" href="images/icons/favicon.ico" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/util.css" />
    <link rel="stylesheet" type="text/css" href="css/main.css" />
    <!--===============================================================================================-->
    <!--===============================================================================================-->
    <!--===============================================================================================-->
    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/daterangepicker/moment.min.js"></script>
    <script src="vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
    <script src="js/main.js"></script>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }

        .auto-style3 {
            text-align: left;
        }
    </style>
</head>
    <!--style="background-image: url(images/image2.jpg); width: inherit; height: inherit; background-repeat: no-repeat"-->
<body>
    <div class="limiter" id="id1">
        <div class="container-login100">
            <div class="wrap-login100 p-t-50 p-b-90">
                <form id="form1" runat="server">
                    <div class="auto-style3">
                        <div class="auto-style1">
                            <span class="login100-form-title p-b-51">CDAC</span>
                            <span class="login100-form-title p-b-51">SDN Lab Login</span>

                            <div class="wrap-input100 validate-input m-b-16" data-validate="Username is required">
                                <asp:TextBox ID="TextBox1" class="input100" runat="server" placeholder="Username"></asp:TextBox>
                                <span class="focus-input100"></span>
                            </div>
                            <p>&nbsp;</p>
                            <div class="wrap-input100 validate-input m-b-16" data-validate="Password is required">
                                <asp:TextBox ID="TextBox2" class="input100" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                                <span class="focus-input100"></span>
                            </div>

                            <div class="flex-sb-m w-full p-t-3 p-b-24">
                                <div class="contact100-form-checkbox">
                                    <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me" />
                                    <label class="label-checkbox100" for="ckb1">
                                        Remember me
                                    </label>
                                </div>
                            </div>
                            <div>
                                <asp:Button ID="Button1" runat="server" Height="35px" OnClick="Button1_Click" Text="Login" Width="100px" Font-Bold="True" Font-Strikeout="False" ForeColor="#3399FF" />
                            </div>
                            <p>
                                Don&#39;t have account?<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/register.aspx">Register Here</asp:HyperLink>
                            </p>
                            <p>
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/forgot.aspx">Forgot Password?</asp:HyperLink>
                            </p>
                            <div>
                                &nbsp;
                            <asp:Button ID="Button2" runat="server" Height="30px" OnClick="Button2_Click" Text="I am ROOT" Width="140px" ForeColor="Red" />
                            </div>
                          
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
