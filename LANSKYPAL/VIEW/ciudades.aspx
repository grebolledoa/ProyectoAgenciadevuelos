<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="ciudades.aspx.cs" Inherits="VIEW.ciudades" %>
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
    <asp:Panel ID="Panel1" runat="server" CssClass="">
        <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-4 jumbotron form-horizontal" role="form">   
                <div class="form-group">
                    <label for="inputPassword" class="col-lg-4 control-label">ID Ciudad</label>
                    <div class="col-lg-7">
                        <asp:TextBox ID="tbID" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="tbID" runat="server" ErrorMessage="Debe Ingresar ID" Text="" Display="Dynamic" CssClass="alert-danger"></asp:RequiredFieldValidator>
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
                        <label for="inputPassword" class="col-lg-6 control-label"><br /></label>
                        <div class="col-md-3">
                        <asp:Button ID="btnAgregar" runat="server" Text="Agregar" CssClass="btn btn-primary xt-center" OnClick="btnAgregar_Click"/>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>


</asp:Content>
