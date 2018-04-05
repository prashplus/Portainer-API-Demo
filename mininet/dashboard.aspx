<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="css/scrolling-nav.css" rel="stylesheet" />
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
        <div class="container">
            <a class="navbar-brand js-scroll-trigger" href="#page-top">Dashboard</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#about">Start</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#services">Stop</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="Default.aspx">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <header class="bg-primary text-white">
        <div class="container text-center">
            <h1>Welcome to SDN Lab Dashboard</h1>
            <p class="lead">Create an Instant Virtual Network on the server for your Experiments/Emulations</p>
        </div>
    </header>
    <form id="form1" runat="server">
        <section id="go">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <h2>Go to Workbench</h2>
                        <p class="lead">Your WORKBENCH is waiting for you. Go over their and start some networking stuff. Click the below button to create and redirect to your workbench.</p>
                        <asp:Button ID="Button4" class="btn btn-primary btn-block" runat="server" Text="Go to Workbench" OnClick="Button4_Click" />

                    </div>
                </div>
            </div>
        </section>
        <section id="auth">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <h2>Generate the Authentication Token</h2>
                        <p class="lead">Click the below button to get the token. Then, you are ready to change the state of your container.</p>
                        <asp:Button ID="Button1" class="btn btn-primary btn-block" runat="server" OnClick="Button1_Click" Text="Authenticate" />
                    </div>
                </div>
            </div>
        </section>
        <section id="about" class="bg-light">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <h2>Start your Mininet</h2>
                        <p class="lead">Here you can start your container(mininet) from this dashboard just by clicking the button given below.</p>
                        <asp:Button ID="Button2" class="btn btn-primary btn-block" runat="server" Text="Start My Container" OnClick="Button2_Click" />
                    </div>
                </div>
            </div>
        </section>
        <section id="services">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <h2>Stop your Mininet</h2>
                        <p class="lead">Here you can stop your mininet-container from this dashboard to save the server resources just by clicking the button given below.</p>
                        <asp:Button ID="Button3" runat="server" class="btn btn-primary btn-block" Text="Stop My Container" OnClick="Button3_Click" />
                    </div>
                </div>
            </div>
        </section>

        <section id="contact" class="bg-light">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <h2>Contact us</h2>
                        <p class="lead">Prashant Piprotar (CDAC Intern)</p>
                        <p class="lead">23, Panchavati, Pashan, Pune, 400000</p>
                        <p class="lead">E-mail: prashplus@gmail.com</p>
                        <p class="lead">Contact No: +91 9876 543210</p>
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
