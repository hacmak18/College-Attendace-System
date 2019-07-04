<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Student_login" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Sign in</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="icon" type="image/png" href="../bootstrap/login/css/images/icons/favicon.ico"/>

	<link rel="stylesheet" type="text/css" href="../bootstrap/login/css/vendor/bootstrap/css/bootstrap.min.css">

	<link rel="stylesheet" type="text/css" href="../bootstrap/login/css/fonts/font-awesome-4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" type="text/css" href="../bootstrap/login/css/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">

	<link rel="stylesheet" type="text/css" href="../bootstrap/login/css/vendor/animate/animate.css">

	<link rel="stylesheet" type="text/css" href="../bootstrap/login/css/vendor/css-hamburgers/hamburgers.min.css">

	<link rel="stylesheet" type="text/css" href="../bootstrap/login/css/vendor/animsition/css/animsition.min.css">

	<link rel="stylesheet" type="text/css" href="../bootstrap/login/css/vendor/select2/select2.min.css">

	<link rel="stylesheet" type="text/css" href="../bootstrap/login/css/vendor/daterangepicker/daterangepicker.css">

	<link rel="stylesheet" type="text/css" href="../bootstrap/login/css/css/util.css">
	<link rel="stylesheet" type="text/css" href="../bootstrap/login/css/css/main.css">
    <style>
        .body-back{
            background-image:url(../bootstrap/login/css/images/25483_dharmsinh_new.jpg);
            background-repeat:no-repeat;
            background-size:100% 100%;
            
        }
    </style>
</head>
<body>
    <div>
    <div class="limiter body-back">
		<div class="container-login100">
			<div class="wrap-login100 p-t-50 p-b-90">
				<form id="form1" runat="server" class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-51" style="color:#ffffff;font-family:'Bookman Old Style';margin-top:50px;font-weight:bolder">
						Login
					</span>

					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Username is required">
						<asp:TextBox class="input100" runat="server" id="username" placeholder="Username"/>
						<span class="focus-input100"></span>
					</div>
					
					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Password is required">
						<asp:TextBox class="input100" runat="server" type="password" id="password" placeholder="Password"/>
						<span class="focus-input100"></span>
					</div>
					
					<%--<div class="flex-sb-m w-full p-t-3 p-b-24">
						<div>
							<a href="#" class="txt1" style="margin-left:440%">
								Forgot?
							</a>
						</div>
					</div>--%>

					<div class="container-login100-form-btn m-t-17">
						<asp:Button runat="server" ID="plsubmit" Text="Login" OnClick="button_click" class="login100-form-btn"/>
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	

	<script src="../bootstrap/login/vendor/jquery/jquery-3.2.1.min.js"></script>

	<script src="../bootstrap/login/vendor/animsition/js/animsition.min.js"></script>

	<script src="../bootstrap/login/vendor/bootstrap/js/popper.js"></script>
	<script src="../bootstrap/login/vendor/bootstrap/js/bootstrap.min.js"></script>

	<script src="../bootstrap/login/vendor/select2/select2.min.js"></script>

	<script src="../bootstrap/login/vendor/daterangepicker/moment.min.js"></script>
	<script src="../bootstrap/login/vendor/daterangepicker/daterangepicker.js"></script>

	<script src="../bootstrap/login/vendor/countdowntime/countdowntime.js"></script>

	<script src="../bootstrap/login/js/main.js"></script>
    </div>
</body>
</html>
