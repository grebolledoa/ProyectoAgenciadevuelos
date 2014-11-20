<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="modificarCiudades.aspx.cs" Inherits="VIEW.modificarCiudades" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <header>
       <div class="container">
            <h1 class="text-center text-success">LANSKYPAL</h1>
            <ul class="nav nav-tabs nav-justified" role="tablist">
                <li><a href="index.aspx">Home</a></li>
                <li><a href="ventas.aspx">Ventas</a></li>
                <li class="active"><a href="vuelos.aspx">Vuelos</a></li>
            </ul>
        </div>
        <ol class="breadcrumb text-center small">
            <li><a href="index.aspx">Home</a></li>
            <li><a href="vuelos.aspx">Vuelos</a></li>
            <li class="active">Ciudades</li>
        </ol>
    </header>
    <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <p class="text-center">
                    <a href="ciudades.aspx" class="btn btn-primary">Agregar</a>
                    <a href="modificarCiudades.aspx" class="btn btn-success">Modificar</a>
                    <a href="EliminarCiudades.aspx" class="btn btn-danger">Eliminar</a>
                </p>
            </div>
        </div>
    </div>   
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4 jumbotron form-horizontal" role="form">      
            <div class="form-group">
                <label for="inputPassword" class="col-md-4 control-label">ID</label>
                <div class="col-md-5">
                    <asp:DropDownList ID="ddl_ID" runat="server" DataSourceID="SqlDataSource1" DataTextField="NOMBRE_CIUDAD" DataValueField="ID_CIUDAD" CssClass="form-control input-mg" ></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="Data Source=Gustavo;Initial Catalog=Aerolinea;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [ID_CIUDAD], [NOMBRE_CIUDAD] FROM [CIUDAD]"></asp:SqlDataSource>
                    <asp:Button ID="btnCargar" runat="server" Text="Cargar"  CssClass="btn btn-default" OnClick="btnCargar_Click" />
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword" class="col-lg-4 control-label">Nombre</label>
                <div class="col-lg-7">
                    <asp:TextBox ID="tbNombre" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="nombreRequired" ControlToValidate="tbNombre" runat="server" ErrorMessage="Debe Ingresar Nombre" Text="" Display="Dynamic" CssClass="alert-danger"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                    <label for="inputPassword" class="col-lg-5 control-label"><br /></label>
                    <div class="col-md-3">
                    <asp:Button ID="btnAgregar" runat="server" Text="Modificar" CssClass="btn btn-primary xt-center" OnClick="btnAgregar_Click" />
                </div>
            </div>                
        </div>
    </div>
</asp:Content>
