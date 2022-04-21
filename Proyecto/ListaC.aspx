﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListaC.aspx.cs" Inherits="Proyecto.ListaC" %>

<!DOCTYPE html>
<html lang="es">
<head>
	<title>Categorias</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="stylesheet" href="./css/main.css">
   <%-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>--%>

</head>
<body>
	<!-- SideBar -->
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
						<a href="Cuenta.aspx" title="Mi cuenta">
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
							<a href="category.html"><i class="zmdi zmdi-labels zmdi-hc-fw"></i> Listas</a>
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
			  <h1 class="text-titles"><i class="zmdi zmdi-labels zmdi-hc-fw"></i> Administración <small>CATEORÍAS</small></h1>
			</div>
			<p class="lead">PAGINA PARA VER, AGREGAR Y ACTUALIZAR DISTINTOS CAMPOS COMO: CARRERAS, AULAS, GRUPOS, TURNOS Y MODALIDAD</p>
		</div>

		<div class="container-fluid">
			<ul class="breadcrumb breadcrumb-tabs">
			  	<li>
			  		<a href="category-list.html" class="btn btn-success">
			  			<i class="zmdi zmdi-format-list-bulleted"></i> &nbsp; LISTAS
			  		</a>
			  	</li>
			</ul>
		</div>

		<!-- --------------------------------Panel listado de carreras------------------------------------------------------------------ -->
		<div class="container-fluid">
			<div class="panel ">
				<div class="panel-heading">
					<h3 class="panel-title"><i class="zmdi zmdi-format-list-bulleted"></i> &nbsp; LISTA DE CARRERAS</h3>
				</div>
				<div class="panel-body">
					<div class="table-responsive ">
						 <form id="form1" runat="server">
            <div class="container-fluid">
                <div class="row">
                <div class="col-xs-12">
              <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" AutoGenerateDeleteButton="False" AutoGenerateEditButton="False" DataSourceID="SqlDataSource1" DataKeyNames="idCarrera" CssClass=" table table-hover text-center table-bordered border-primary">
            
            <Columns>
                <asp:BoundField DataField="idCarrera" HeaderText="idCarrera" SortExpression="idCarrera" InsertVisible="False" ReadOnly="True" Visible="false" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" /> 
                <asp:BoundField DataField="CodigoCarrera" HeaderText="CodigoCarrera" SortExpression="CodigoCarrera" />
                <asp:CommandField ShowDeleteButton="true" ControlStyle-CssClass="btn btn-danger  btn-raised btn-xs " HeaderText="Eliminar"/>
                <asp:CommandField ShowEditButton="true" ControlStyle-CssClass="btn btn-success btn-raised btn-xs" HeaderText="Actualizar"/>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BDUNIConnectionString %>"
         SelectCommand="SELECT [idCarrera],[Nombre], [CodigoCarrera] FROM [Carreras]" 
         DeleteCommand="DELETE FROM [Carreras] WHERE [idCarrera] = @idCarrera"  
         UpdateCommand="UPDATE [Carreras] SET [Nombre] = @Nombre, [CodigoCarrera] = @CodigoCarrera WHERE [idCarrera] = @IdCarrera">
        </asp:SqlDataSource>

        </div>
                         <div class="row center-block" >
				    				<div class="col-xs-10 col-sm-5" style="padding-left:20px;">
								    	<div class="form-group label-floating">
										  	<label class="control-label">Código *</label>
										  	<input pattern="[0-9]{1,7}" class="form-control" type="text" name="codigo-reg" required="" maxlength="7" id="txtCodigo"  runat="server">
										</div>
				    				</div>
				    				<div class="col-xs-10 col-sm-5">
								    	<div class="form-group label-floating">
										  	<label class="control-label">Nombre *</label>
										  	<input pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,30}" class="form-control" type="text" name="nombre-reg" required="" maxlength="30" id="txtNombre" runat="server">
										</div>
				    				</div>
                                    <div class="col-xs-10 col-sm-1" style="padding-top:30px; padding-left:20px;">
                                            <asp:Button ID="Button1" runat="server" Text="Agregar" CssClass="btn btn-primary  btn-raised btn-xs " OnClick="Button1_Click"/>
										</div>
				    			</div>
                 
		</form>
</div>
					</div>
					</div>
				</div>
        <!-- Panel listado de carreras---------------------------------------------------------------- -->
	</section>

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
