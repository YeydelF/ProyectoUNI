<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListaAdmin.aspx.cs" Inherits="Proyecto.ListaAdmin" %>

<!DOCTYPE html>
<html lang="es">
<head>
	<title>Lista Admin</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="stylesheet" href="./css/main.css">
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
					<figcaption class="text-center text-titles">User Name</figcaption>
				</figure>
				<ul class="full-box list-unstyled text-center">
					<li>
						<a href="my-data.html" title="Mis datos">
							<i class="zmdi zmdi-account-circle"></i>
						</a>
					</li>
					<li>
						<a href="my-account.html" title="Mi cuenta">
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
							<a href="category.html"><i class="zmdi zmdi-labels zmdi-hc-fw"></i> Categorías</a>
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
							<a href="admin.html"><i class="zmdi zmdi-account zmdi-hc-fw"></i> Administradores</a>
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
			  <h1 class="text-titles"><i class="zmdi zmdi-account zmdi-hc-fw"></i> Usuarios <small>ADMINISTRADORES</small></h1>
			</div>
			<p class="lead">Lista actual de administradores del sistema de pedidos de equipos UNI-RUACS</p>
		</div>

		<div class="container-fluid">
			<ul class="breadcrumb breadcrumb-tabs">
			  	<li>
			  		<a href="admin.html" class="btn btn-info">
			  			<i class="zmdi zmdi-plus"></i> &nbsp; NUEVO ADMINISTRADOR
			  		</a>
			  	</li>
			  	<li>
			  		<a href="ListaAdmin.aspx" class="btn btn-success">
			  			<i class="zmdi zmdi-format-list-bulleted"></i> &nbsp; LISTA DE ADMINISTRADORES
			  		</a>
			  	</li>
			  	<li>
			  		<a href="admin-search.html" class="btn btn-primary">
			  			<i class="zmdi zmdi-search"></i> &nbsp; BUSCAR ADMINISTRADOR
			  		</a>
			  	</li>
			</ul>
		</div>
		
		<!-- Panel listado de administradores -->
		<div class="container-fluid">
			<div class="panel panel-success">
				<div class="panel-heading">
					<h3 class="panel-title"><i class="zmdi zmdi-format-list-bulleted"></i>&nbsp; LISTA DE ADMINISTRADORES</h3>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
					 <form id="form1" runat="server">
                          <div class="row">
                              <div class="col-md-12">
                                  <asp:GridView ID="GridView1" runat="server"  CssClass=" table table-hover text-center table-bordered border-primary" AutoGenerateColumns="False" DataKeyNames="idPersona" DataSourceID="SqlDataSource1" >
                                      <Columns>
                                          <asp:BoundField DataField="idPersona" HeaderText="idPersona" ReadOnly="True" SortExpression="idPersona" visible="false"/>
                                          <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                          <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                                          <asp:BoundField DataField="Codigo" HeaderText="Código" SortExpression="Código" />
                                          <asp:BoundField DataField="Cedula" HeaderText="Cédula" SortExpression="Cédula" />
                                          <asp:BoundField DataField="Direccion" HeaderText="Dirección" SortExpression="Dirección" />
                                          <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                                          <asp:BoundField DataField="Descripcion" HeaderText="Tipo" SortExpression="Tipo" ReadOnly="True" />
                                           <asp:BoundField DataField="Telefono" HeaderText="Teléfono" SortExpression="Teléfono" />
                                          <asp:CommandField ShowEditButton="true" ControlStyle-CssClass="btn btn-success btn-raised btn-xs " HeaderText="Editar"/>
                                      </Columns>
                                  </asp:GridView>

                                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BDUNIConnectionString %>" 
                                      SelectCommand="SELECT * FROM [VWUsuariosAdministrador]"
                                       UpdateCommand="UPDATE Persona SET [Nombre] = @Nombre, [Apellido] = @Apellido, [Codigo] = @Codigo, [Cedula] = @Cedula , [Direccion] = @Direccion , [Correo] = @Correo,[Telefono] = @Telefono WHERE [idPersona] = @idPersona">

                                  </asp:SqlDataSource>

                              </div>
                          </div>
					 </form>                
					</div>
				</div>
			</div>
		</div>
		
		
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


