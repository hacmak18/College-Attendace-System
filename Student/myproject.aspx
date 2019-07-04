<%@ Page Title="" Language="C#" MasterPageFile="~/Student/student.master" AutoEventWireup="true" CodeFile="myproject.aspx.cs" Inherits="Student_myproject" %>

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
    <div style="width:60%;margin-left:20%;margin-top:-10%">
    <div class="limiter body-back">
		<div class="container-login100">
			<div class="wrap-login100 p-t-50 p-b-90">
					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Username is required">
					<b style="font-size:large">definition ID:</b>	<asp:Label class="input100" runat="server" id="udef"/>
						<span class="focus-input100"></span>
					</div>
					
					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Password is required">
					<b style="font-size:large">Member 1 :</b>	<asp:Label class="input100" runat="server" id="m1" />
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Password is required">
					<b style="font-size:large">Member 2 :</b>	<asp:Label class="input100" runat="server" id="m2"/>
						<span class="focus-input100"></span>
					</div>
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
</asp:Content>

