﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Proyecto.WebForm1" %>

<!DOCTYPE html>

<<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>

</head>
<body>
    <form id="form1" runat="server">
   <%-- <div>

    <h3>Table example, constructed at design time</h3>
    <asp:Table id="Table1" class="table table-hover text-center" runat="server"
        CellPadding="10" 
        GridLines="Both"
        HorizontalAlign="Center" Height="47px" Width="876px">
        <asp:TableRow>
            <asp:TableHeaderCell Text="Número"></asp:TableHeaderCell>
             <asp:TableHeaderCell Text="Nombre"></asp:TableHeaderCell>
             <asp:TableHeaderCell Text="Profesión"></asp:TableHeaderCell>
        </asp:TableRow>
    </asp:Table>
    
    </div>--%>
        <div class="container">
            <div class="row">
                <div class="col-md-8">
              <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" AutoGenerateDeleteButton="False" AutoGenerateEditButton="False" DataSourceID="SqlDataSource1" DataKeyNames="idCarrera" CssClass=" table table-hover text-center ">
            
            <Columns>
                <asp:BoundField DataField="idCarrera" HeaderText="idCarrera" SortExpression="idCarrera" InsertVisible="False" ReadOnly="True" Visible="false" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" /> 
                <asp:BoundField DataField="CodigoCarrera" HeaderText="CodigoCarrera" SortExpression="CodigoCarrera" />
                <asp:CommandField ShowDeleteButton="true" ControlStyle-CssClass="btn btn-danger" HeaderText="Eliminar"/>
                <asp:CommandField ShowEditButton="true" ControlStyle-CssClass="btn btn-info" HeaderText="Actualizar"/>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BDUNIConnectionString %>"
         SelectCommand="SELECT [idCarrera],[Nombre], [CodigoCarrera] FROM [Carreras]" 
         DeleteCommand="DELETE FROM [Carreras] WHERE [idCarrera] = @idCarrera"  
         UpdateCommand="UPDATE [Carreras] SET [Nombre] = @Nombre, [CodigoCarrera] = @CodigoCarrera WHERE [idCarrera] = @IdCarrera">
        </asp:SqlDataSource>

        </div>
            </div>
        </div>
      
        
      
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
      
        
      
    </form>
    </body>
</html>