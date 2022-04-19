﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cuenta.aspx.cs" Inherits="Proyecto.Cuenta" %>

<!DOCTYPE html>
<html lang="es">
<head>
	<title>Mi Cuenta</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="stylesheet" href="./css/main.css">
</head>
<body>
	<!-- SideBar -->
    <form id="form1" runat="server">
	<section class="full-box cover dashboard-sideBar">
		<div class="full-box dashboard-sideBar-bg btn-menu-dashboard"></div>
		<div class="full-box dashboard-sideBar-ct">
			<!--SideBar Title -->
			<div class="full-box text-uppercase text-center text-titles dashboard-sideBar-title">
				   <img src="assets/img/descarga.png" width="70" height="40" /> 
                <i class="zmdi zmdi-close btn-menu-dashboard visible-xs"></i>
			</div>
			<!-- SideBar User info -->
			<div class="full-box dashboard-sideBar-UserInfo">
				<figure class="full-box">
					<img src="./assets/avatars/AdminMaleAvatar.png" alt="UserIcon">
					<figcaption class="text-center text-titles">
                          <asp:Label ID="Label1" runat="server" Text="Usuario" CssClass="text-center text-titles"></asp:Label>
					</figcaption>
				</figure>
				<ul class="full-box list-unstyled text-center">
					<li>
						<a href="DatosCuenta.aspx" title="Mis datos">
							<i class="zmdi zmdi-account-circle"></i>
						</a>
					</li>
					<li>
						<a href="#" title="Mi cuenta">
							<i class="zmdi zmdi-settings"></i>
						</a>
					</li>
					<li>
						<a href="#!" title="Salir del sistema" class="btn-exit-system">
							<i class="zmdi zmdi-power"></i>
						</a>
					</li>
				</ul>
			</div>
			<!-- SideBar Menu -->
			<ul class="list-unstyled full-box dashboard-sideBar-Menu">
				<li>
					<a href="Inicio.aspx">
						<i class="zmdi zmdi-view-dashboard zmdi-hc-fw"></i> Inicio
					</a>
				</li>
				<li>
					<a href="#!" class="btn-sideBar-SubMenu">
						<i class="zmdi zmdi-case zmdi-hc-fw"></i> Administración <i class="zmdi zmdi-caret-down pull-right"></i>
					</a>
					<ul class="list-unstyled full-box">
						<li>
							<a href="company.html"><i class="zmdi zmdi-balance zmdi-hc-fw"></i> Empresa</a>
						</li>
						<li>
							<a href="Carreras.aspx"><i class="zmdi zmdi-labels zmdi-hc-fw"></i> Categorías</a>
						</li>
						<li>
							<a href="provider.html"><i class="zmdi zmdi-truck zmdi-hc-fw"></i> Proveedores</a>
						</li>
						<li>
							<a href="book.html"><i class="zmdi zmdi-book zmdi-hc-fw"></i> Nuevo libro</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="#!" class="btn-sideBar-SubMenu">
						<i class="zmdi zmdi-account-add zmdi-hc-fw"></i> Usuarios <i class="zmdi zmdi-caret-down pull-right"></i>
					</a>
					<ul class="list-unstyled full-box">
						<li>
							<a href="Admin.aspx"><i class="zmdi zmdi-account zmdi-hc-fw"></i> Administradores</a>
						</li>
						<li>
							<a href="client.html"><i class="zmdi zmdi-male-female zmdi-hc-fw"></i> Clientes</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="catalog.html">
						<i class="zmdi zmdi-book-image zmdi-hc-fw"></i> Catalogo
					</a>
				</li>
			</ul>
		</div>
	</section>

	<!-- Content page-->
	<section class="full-box dashboard-contentPage">
		<!-- NavBar -->
		<nav class="full-box dashboard-Navbar">
			<ul class="full-box list-unstyled text-right">
				<li class="pull-left">
					<a href="#!" class="btn-menu-dashboard"><i class="zmdi zmdi-more-vert"></i></a>
				</li>
				<li>
					<a href="search.html" class="btn-search">
						<i class="zmdi zmdi-search"></i>
					</a>
				</li>
			</ul>
		</nav>
		<!-- Content page -->
		<div class="container-fluid">
			<div class="page-header">
			  <h1 class="text-titles"><i class="zmdi zmdi-settings zmdi-hc-fw"></i><small> MI CUENTA</small></h1>
			</div>
			<p class="lead">Bienvenido a la ventana para cambiar los datos de usuario. Al hacer cualquier cambio en el Usuario y/o Contraseña, la sesión se cerrará automáticamente</p>
		</div>

		<!-- Panel mi cuenta -->
		<div class="container-fluid">
			<div class="panel panel-success">
				<div class="panel-heading">
					<h3 class="panel-title"><i class="zmdi zmdi-refresh"></i> &nbsp; MI CUENTA</h3>
				</div>
				<div class="panel-body">
					<form>
				    	<fieldset>
				    		<legend><i class="zmdi zmdi-key"></i> &nbsp; Datos de la cuenta</legend>
				    		<div class="container-fluid">
				    			<div class="row">
				    				<div class="col-xs-12">
							    		<div class="form-group label-floating">
										  	<label class="control-label">Nombre de usuario *</label>
                                            <asp:TextBox ID="txtUser" runat="server" name="usuario-up" maxlength="15" class="form-control" pattern="[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ]{1,15}"></asp:TextBox>
										</div>
				    				</div>
				    				<div class="col-xs-12 col-sm-6">
										<div class="form-group label-floating">
										  	<label class="control-label">E-mail</label>
										  	<input class="form-control" type="email" name="email-up" maxlength="50" readonly="readonly" id="txtCorreo" runat="server">
										</div>
				    				</div>
				    				
				    			</div>
				    		</div>
				    	</fieldset>
				    	<br>
				    	<fieldset>
				    		<legend><i class="zmdi zmdi-lock"></i> &nbsp; Contraseña</legend>
				    		<p>
				    			Para Cambiar la contraseña, debe ingresar su contraseña anterior, seguido, ingresar la nueva contraseña las veces necesarias, en caso de algun fallo aparecerá un texto indicativo
				    		</p>
				    		<div class="container-fluid">
				    			<div class="row">
				    				<div class="col-xs-12">
										<div class="form-group label-floating">
										  	<label class="control-label">Contraseña actual *</label>
										  	<input class="form-control" type="password" name="password-up" required="" maxlength="70" id="txtPassA" runat="server">
										</div>
				    				</div>
				    				<div class="col-xs-12 col-sm-6">
										<div class="form-group label-floating">
										  	<label class="control-label">Nueva contraseña *</label>
										  	<input class="form-control" type="password" name="newPassword1-up" required="" maxlength="70" id="txtPassN" runat="server">
										</div>
				    				</div>
				    				<div class="col-xs-12 col-sm-6">
										<div class="form-group label-floating">
										  	<label class="control-label">Repita la nueva contraseña *</label>
										  	<input class="form-control" type="password" name="newPassword2-up" required="" maxlength="70" id="txtPassR" runat="server">
										</div>
				    				</div>
				    			</div>
				    		</div>
				    	</fieldset>
				    	<br>
				    	
					    <p class="text-center" style="margin-top: 20px;">
                            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                            <br />
                            <asp:Button ID="Button1" runat="server" Text="Actualizar"  CssClass="btn btn-success btn-raised btn-sm" OnClick="Button1_Click"/>
					    </p>
				    </form>
				</div>
			</div>
		</div>
		
	</section>
    </form>
	<!--====== Scripts -->
	<script src="./js/jquery-3.1.1.min.js"></script>
	<script src="./js/sweetalert2.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	<script src="./js/material.min.js"></script>
	<script src="./js/ripples.min.js"></script>
	<script src="./js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="./js/main.js"></script>
	<script>
		$.material.init();
	</script>
</body>
</html>
