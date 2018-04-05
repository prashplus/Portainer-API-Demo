<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mininet Signup</title>
    <meta charset="UTF-8" />
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }

        .auto-style2 {
            text-align: justify;
        }

        .auto-style3 {
            text-align: center;
            text-decoration: underline;
        }

        .auto-style4 {
            margin-bottom: 1px;
        }
    </style>
</head>
<body>
    <div class="container" style="width: 800px; margin: 0 auto;">

        <form id="form1" runat="server" class="well form-horizontal">
            <fieldset>
                <legend>
                    <center><h2><b>Registration Form</b></h2></center>
                </legend>
                <p class="auto-style1">
                    (Fill up the details and you are good to go)
                </p>


                <div class="form-group">
                    <label class="col-md-4 control-label">Full Name</label>
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <asp:TextBox ID="TextBox1" placeholder="Full Name" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label">Username</label>
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <asp:TextBox ID="TextBox5" placeholder="Username" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label">Password</label>
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <asp:TextBox ID="TextBox2" placeholder="Password" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label">Confirm Password</label>
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <asp:TextBox ID="TextBox3" placeholder="Confirm Password" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label">Country</label>
                    <div class="col-md-4 selectContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>India</asp:ListItem>
                                <asp:ListItem>United States</asp:ListItem>
                                <asp:ListItem>United Kingdom</asp:ListItem>
                                <asp:ListItem>Autralia</asp:ListItem>
                                <asp:ListItem>Canada</asp:ListItem>
                                <asp:ListItem>Japan</asp:ListItem>
                                <asp:ListItem>China</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label">E-Mail</label>
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                            <asp:TextBox ID="TextBox4" placeholder="E-Mail Address" class="form-control" runat="server" TextMode="Email"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label"></label>
                    <div class="col-md-4">
                        <br>
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:Button ID="Button1" class="btn btn-warning" runat="server" Text="Register" OnClick="Button1_Click" />
                    </div>
                </div>
                <br />

                <div class="form-group">
                    <label class="col-md-4 control-label"></label>
                    <div class="col-md-4">
                        <br>
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                         Already have account<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Click here to LogIn" class="btn" />
                    </div>
                </div>
            </fieldset>
        </form>
    </div>
</body>
</html>
