<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Indice.aspx.cs" Inherits="Proyecto.Indice" %>

<!DOCTYPE html>
<html lang="es">
<head>
	<title>LogIn</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="stylesheet" href="./css/main.css">
</head>
<body>
	<div class="full-box login-container cover">
        <div class="container-fluit">
            <div class="row" style="padding-top:10px">
                <div class="col-md-10">

                </div>
                 <div class="col-md-2">
                     <a href="WebForm1.aspx" style="color:white" class="btn btn-info">Registrar</a>
                </div>
                
            </div>
        </div>
		<form   autocomplete="off" class="logInForm" runat="server" id="form1">
			<p class="text-center text-muted"><i class="zmdi zmdi-account-circle zmdi-hc-5x"></i></p>
			<p class="text-center text-muted text-uppercase">Inicia sesión con tu cuenta</p>
			<div class="form-group label-floating">
			  <label class="control-label" for="UserName">Usuario</label>
			  <input style="color:white" class="form-control" id="txtUser" type="text" runat="server">
			  <p class="help-block">Escribe tú nombre de usuario</p>
			</div>
			<div class="form-group label-floating">
			  <label class="control-label" for="UserPass">Contraseña</label>
			  <input class="form-control" style="color:white" id="txtPass" type="password" runat="server">
			  <p class="help-block">Escribe tú contraseña</p>
			</div>
			<div class="form-group text-center">
                <asp:Button ID="Button1" runat="server" Text="Iniciar sesión" CssClass="btn btn-info" OnClick="Button1_Click" />
                <br />
                <asp:Label ID="Label1" runat="server" Text="" Font-Size="Small"></asp:Label>
			</div>
		</form>
	</div>
	<!--====== Scripts -->
	<script src="./js/jquery-3.1.1.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	<script src="./js/material.min.js"></script>
	<script src="./js/ripples.min.js"></script>
	<script src="./js/sweetalert2.min.js"></script>
	<script src="./js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="./js/main.js"></script>
	<script>
		$.material.init();
	</script>
</body>
</html>
