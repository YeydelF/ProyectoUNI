<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClienteRegistro.aspx.cs" Inherits="Proyecto.Admin" %>

<!DOCTYPE html>
<html lang="es">
<head>
	<title>Admin</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="stylesheet" href="./css/main.css">
</head>
<body>

	<!-- Content page-->
	<section class="full-box dashboard-contentPage">


		<!-- Panel nuevo administrador -->
		<div class="container-fluid">
			<div class="panel panel-info">
				<div class="panel-heading">
					<h3 class="panel-title"><i class="zmdi zmdi-plus"></i> &nbsp; NUEVO CLIENTE</h3>
				</div>
				<div class="panel-body">
					<form>
				    	<fieldset>
				    		<legend><i class="zmdi zmdi-account-box"></i> &nbsp; Información personal</legend>
				    		<div class="container-fluid">
				    			<div class="row">
				    				<div class="col-xs-12">
								    	<div class="form-group label-floating">
										  	<label class="control-label">CEDULA *</label>
										  	<input pattern="[0-9-]{1,30}" class="form-control" type="text" name="dni-reg" required="" maxlength="30" id="Cedula" runat="server">
										</div>
				    				</div>
				    				<div class="col-xs-12 col-sm-6">
								    	<div class="form-group label-floating">
										  	<label class="control-label">Nombres *</label>
										  	<input pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,30}" class="form-control" type="text" name="nombre-reg" required="" maxlength="30" id="Nombre" runat="server">
										</div>
				    				</div>
				    				<div class="col-xs-12 col-sm-6">
										<div class="form-group label-floating">
										  	<label class="control-label">Apellidos *</label>
										  	<input pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,30}" class="form-control" type="text" name="apellido-reg" required="" maxlength="30" id="Apellido" runat="server">
										</div>
				    				</div>
				    				<div class="col-xs-12 col-sm-6">
										<div class="form-group label-floating">
										  	<label class="control-label">Teléfono</label>
										  	<input pattern="[0-9+]{1,15}" class="form-control" type="text" name="telefono-reg" maxlength="15" id="Telefono" runat="server">
										</div>
				    				</div>
                                    <div class="col-xs-12 col-sm-6">
										<div class="form-group label-floating">
										  	<label class="control-label">Código</label>
										  	<input pattern="[0-9+]{1,15}" class="form-control" type="text" name="codigo-reg" maxlength="15" required="" id="Codigo" runat="server">
										</div>
				    				</div>
				    				<div class="col-xs-12">
										<div class="form-group label-floating">
										  	<label class="control-label">Dirección</label>
										  	<textarea name="direccion-reg" class="form-control" rows="2" maxlength="100" id="Direccion" runat="server"></textarea>
										</div>
				    				</div>
				    			</div>
				    		</div>
				    	</fieldset>
				    	<br>
				    	<fieldset>
				    		<legend><i class="zmdi zmdi-key"></i> &nbsp; Datos de la cuenta</legend>
				    		<div class="container-fluid">
				    			<div class="row">
				    				<div class="col-xs-12">
							    		<div class="form-group label-floating">
										  	<label class="control-label">Nombre de usuario *</label>
										  	<input pattern="[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ]{1,15}" class="form-control" type="text" name="usuario-reg" required="" maxlength="15" id="Usuario" runat="server">
										</div>
				    				</div>
				    				<div class="col-xs-12 col-sm-6">
										<div class="form-group label-floating">
										  	<label class="control-label">Contraseña *</label>
										  	<input class="form-control" type="password" name="password1-reg" required="" maxlength="70" id="Pass" runat="server">
										</div>
				    				</div>
				    				<div class="col-xs-12 col-sm-6">
										<div class="form-group label-floating">
										  	<label class="control-label">Repita la contraseña *</label>
										  	<input class="form-control" type="password" name="password2-reg" required="" maxlength="70" id="Pass2" runat="server">
										</div>
				    				</div>
				    				<div class="col-xs-12 col-sm-6">
										<div class="form-group label-floating">
										  	<label class="control-label">E-mail</label>
										  	<input class="form-control" type="email" name="email-reg" maxlength="50" id="Correo" runat="server">
										</div>
				    				</div>
				    				
				    			</div>
				    		</div>
				    	</fieldset>
				    	<br>
				    	>
					    <p class="text-center" style="margin-top: 20px;">
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            <br />
                            <asp:Button ID="Button1" runat="server" Text="Guardar" CssClass="btn btn-info btn-raised btn-sm" OnClick="Button1_Click"/>
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