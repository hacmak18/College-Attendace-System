<%@ Page Title="" Language="C#" MasterPageFile="~/Student/student.master" AutoEventWireup="true" CodeFile="sdef_add.aspx.cs" Inherits="Student_sdef_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <meta name="viewport" content="width=device-width, initial-scale=1"/>

	<link rel="icon" type="image/png" href="css/images/icons/favicon.ico"/>

	<link rel="stylesheet" type="text/css" href="../bootstrap/login/css/vendor/bootstrap/css/bootstrap.min.css"/>

	<link rel="stylesheet" type="text/css" href="../bootstrap/login/css/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>

	<link rel="stylesheet" type="text/css" href="../bootstrap/login/css/fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>

	<link rel="stylesheet" type="text/css" href="../bootstrap/login/css/vendor/animate/animate.css"/>

	<link rel="stylesheet" type="text/css" href="../bootstrap/login/css/vendor/css-hamburgers/hamburgers.min.css"/>

	<link rel="stylesheet" type="text/css" href="../bootstrap/login/css/vendor/animsition/css/animsition.min.css"/>

	<link rel="stylesheet" type="text/css" href="../bootstrap/login/css/vendor/select2/select2.min.css"/>

	<link rel="stylesheet" type="text/css" href="../bootstrap/login/css/vendor/daterangepicker/daterangepicker.css"/>

	<link rel="stylesheet" type="text/css" href="../bootstrap/login/css/css/util.css"/>
	<link rel="stylesheet" type="text/css" href="../bootstrap/login/css/css/main.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <div class="limiter body-back" style="width:60%">
		<div class="container-login100">
			<div class="wrap-login100 p-t-50 p-b-90">
					<span class="login100-form-title p-b-51" style="color:#ffffff">
						Access
					</span>

					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Username is required" style="margin-top:-90%">
						<asp:TextBox class="input100" runat="server" id="sadd_def" placeholder="Defination Name"/>
						<span class="focus-input100"></span>
					</div>
                <div class="wrap-input100 validate-input m-b-16" data-validate = "Username is required" style="margin-top:10%">
						<asp:TextBox class="input100"  Rows="4" runat="server" id="sadd_desc" placeholder="Description"/>
						<span class="focus-input100"></span>
					</div>
                <div class="container-login100-form-btn m-t-17">
						<asp:Button runat="server" ID="pdef_add" Text="Add" OnClick="sdef_add_click" class="login100-form-btn"/>
					</div>
			</div>
		</div>
	</div>
	

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

