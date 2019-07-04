<%@ Page Title="" Language="C#" MasterPageFile="~/Professor/Faculty.master" AutoEventWireup="true" CodeFile="add_student.aspx.cs" Inherits="Professor_add_student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
    <div class="limiter body-back">
		<div class="container-login100">
			<div class="wrap-login100 p-t-50 p-b-90">
				<div id="form1" runat="server" class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-51" style="color:#ffffff;font-family:'Bookman Old Style';margin-top:50px;font-weight:bolder">
						Faculty Login
					</span>

					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Username is required">
						<asp:TextBox class="input100" runat="server" id="fullname" placeholder="Full name"/>
						<span class="focus-input100"></span>
					</div>
					
					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "userid is required">
						<asp:TextBox class="input100" runat="server" id="userid" placeholder="Userid"/>
						<span class="focus-input100"></span>
					</div>

                    <div class="wrap-input100 validate-input m-b-16" data-validate = "roll no is required">
						<asp:TextBox class="input100" runat="server" id="roll_no" placeholder="Roll no."/>
						<span class="focus-input100"></span>
					</div>

                    <div class="wrap-input100 validate-input m-b-16" data-validate = "email is required">
						<asp:TextBox class="input100" runat="server" id="email" placeholder="email"/>
						<span class="focus-input100"></span>
					</div>

                    <div class="wrap-input100 validate-input m-b-16" data-validate = "email is required">
						<asp:TextBox class="input100" runat="server" id="parentmail" placeholder="Parent Email"/>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-16" data-validate = "Password is required">
						<asp:TextBox class="input100" runat="server" type="password" id="password" placeholder="password"/>
						<span class="focus-input100"></span>
					</div>
					
                    <div class="wrap-input100 validate-input m-b-16" data-validate = "card no is required">
						<asp:TextBox class="input100" runat="server" id="cardno" placeholder="card No"/>
						<span class="focus-input100"></span>
					</div>
					<div class="container-login100-form-btn m-t-17">
						<asp:Button runat="server" ID="plsubmit" Text="Login" OnClick="plsubmit_Click" class="login100-form-btn"/>
					</div>

				</div>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	

	<script src="css/vendor/jquery/jquery-3.2.1.min.js"></script>

	<script src="css/vendor/animsition/js/animsition.min.js"></script>

	<script src="css/vendor/bootstrap/js/popper.js"></script>
	<script src="css/vendor/bootstrap/js/bootstrap.min.js"></script>

	<script src="css/vendor/select2/select2.min.js"></script>

	<script src="css/vendor/daterangepicker/moment.min.js"></script>
	<script src="css/vendor/daterangepicker/daterangepicker.js"></script>

	<script src="css/vendor/countdowntime/countdowntime.js"></script>

	<script src="css/js/main.js"></script>
    </div>

</asp:Content>

