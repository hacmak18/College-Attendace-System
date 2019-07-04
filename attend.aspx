<%@ Page Language="C#" AutoEventWireup="true" CodeFile="attend.aspx.cs" Inherits="attend" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Access system</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="icon" type="image/png" href="css/images/icons/favicon.ico"/>

	<link rel="stylesheet" type="text/css" href="bootstrap/login/css/vendor/bootstrap/css/bootstrap.min.css">

	<link rel="stylesheet" type="text/css" href="bootstrap/login/css/fonts/font-awesome-4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" type="text/css" href="bootstrap/login/css/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">

	<link rel="stylesheet" type="text/css" href="bootstrap/login/css/vendor/animate/animate.css">

	<link rel="stylesheet" type="text/css" href="bootstrap/login/css/vendor/css-hamburgers/hamburgers.min.css">

	<link rel="stylesheet" type="text/css" href="bootstrap/login/css/vendor/animsition/css/animsition.min.css">

	<link rel="stylesheet" type="text/css" href="bootstrap/login/css/vendor/select2/select2.min.css">

	<link rel="stylesheet" type="text/css" href="bootstrap/login/css/vendor/daterangepicker/daterangepicker.css">

	<link rel="stylesheet" type="text/css" href="bootstrap/login/css/css/util.css">
	<link rel="stylesheet" type="text/css" href="bootstrap/login/css/css/main.css">
    <style>
        .body-back{
            background-image:url(bootstrap/login/css/images/25483_dharmsinh_new.jpg);
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
					<span class="login100-form-title p-b-51" style="color:#ffffff">
						Access
					</span>

					<asp:panel runat="server" ID="p1">
                        <asp:DropDownList runat="server" ID="subselect" CssClass="form-control" OnSelectedIndexChanged="subselect_SelectedIndexChanged">
                        <asp:ListItem>SELECT SUBJECT</asp:ListItem>
                        <asp:ListItem Value="dbms" >DBMS</asp:ListItem>
                        <asp:ListItem Value="cjt">CJT</asp:ListItem>
                        <asp:ListItem Value="daa">DAA</asp:ListItem>
                        <asp:ListItem Value="amp">AMP</asp:ListItem>
                        <asp:ListItem Value="tafl">TAFL</asp:ListItem>
                    </asp:DropDownList>
					
                        </asp:panel>
                    
                    <div class="wrap-input100 validate-input m-b-16" data-validate = "Username is required">
						<asp:TextBox class="input100" runat="server" id="accessid" OnTextChanged="attvalue_TextChanged" placeholder="Access card"/>
						<span class="focus-input100"></span>
					</div>
				</form>
			</div>
		</div>
	</div>
	

	<script src="Professor/css/vendor/jquery/jquery-3.2.1.min.js"></script>

	<script src="Professor/css/vendor/animsition/js/animsition.min.js"></script>

	<script src="Professor/css/vendor/bootstrap/js/popper.js"></script>
	<script src="Professor/css/vendor/bootstrap/js/bootstrap.min.js"></script>

	<script src="Professor/css/vendor/select2/select2.min.js"></script>

	<script src="Professor/css/vendor/daterangepicker/moment.min.js"></script>
	<script src="Professor/css/vendor/daterangepicker/daterangepicker.js"></script>

	<script src="Professor/css/vendor/countdowntime/countdowntime.js"></script>

	<script src="Professor/css/js/main.js"></script>
    </div>
</body>
</html>