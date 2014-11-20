<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="cliente.aspx.cs" Inherits="VIEW.cliente" %>

<%@ Register Assembly="Tde.Controles.RutTextBox" Namespace="Tde.Controles" TagPrefix="tde" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
       <div class="container">
            <h1 class="text-center text-success">LANSKYPAL</h1>
            <ul class="nav nav-tabs nav-justified" role="tablist">
                <li><a href="index.aspx">Home</a></li>
                <li class="active"><a href="ventas.aspx">Ventas</a></li>
                <li><a href="vuelos.aspx">Vuelos</a></li>
            </ul>
        </div>
        <ol class="breadcrumb text-center small">
            <li><a href="index.aspx">Home</a></li>
            <li><a href="ventas.aspx">Ventas</a></li>
            <li class="active">Clientes</li>
        </ol>
    </header>
    <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <p class="text-center">
                    <a href="cliente.aspx" class="btn btn-primary">Agregar</a>
                    <a href="ModificarCliente.aspx" class="btn btn-success">Modificar</a>
                    <a href="ModificarCliente.aspx" class="btn btn-danger">Eliminar</a>
                </p>
            </div>
        </div>
    </div>    
    <asp:Panel ID="Panel1" runat="server" CssClass="">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4 jumbotron form-horizontal" role="form">      
                <div class="form-group">
                <label for="inputPassword" class="col-lg-4 control-label">Rut</label>
                    <div class="col-lg-7">
                        <tde:RutTextBox ID="tbRut" runat="server" CssClass="form-control" DisplayMensajeRutNoValido="Dynamic" CssClassMensajeRutNoValido="alert-danger"></tde:RutTextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="tbNombre" runat="server" ErrorMessage="Debe Ingresar RUT" Text="" Display="Dynamic" CssClass="alert-danger"></asp:RequiredFieldValidator>
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
                <label for="inputPassword" class="col-lg-4 control-label">Direccion</label>
                    <div class="col-lg-7">
                        <asp:TextBox ID="tbDireccion" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="tbDireccion" runat="server" ErrorMessage="Debe Ingresar Direccion" Text="" Display="Dynamic" CssClass="alert-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="col-lg-4 control-label">Telefono</label>
                    <div class="col-lg-7">
                        <asp:TextBox ID="tbTelefono" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="tbTelefono" runat="server" ErrorMessage="Debe Ingresar Telefono" Text="" Display="Dynamic" CssClass="alert-danger"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Reingrese Telefono" Type="Integer" ControlToValidate="tbTelefono" Display="Dynamic" MinimumValue="10000000" MaximumValue="999999999" CssClass="alert-danger"></asp:RangeValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="col-lg-4 control-label">Telefono Emergencia</label>
                    <div class="col-lg-7">
                        <asp:TextBox ID="tbTelefonoEmergencia" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="alert-danger" ControlToValidate="tbTelefonoEmergencia" runat="server" ErrorMessage="Debe Ingresar Telefono Emergencia" Text="" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" CssClass="alert-danger" ErrorMessage="Reingrese Telefono Emergencia" Type="Integer" ControlToValidate="tbTelefonoEmergencia" Display="Dynamic" MinimumValue="10000000" MaximumValue="999999999"></asp:RangeValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="col-lg-4 control-label">Email</label>
                    <div class="col-lg-7">
                        <asp:TextBox ID="tbEmail" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="alert-danger" ControlToValidate="tbEmail" runat="server" ErrorMessage="Debe Ingresar EMAIL" Text="" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID=RegularExpressionValidator2 runat="server" CssClass="alert-danger" ErrorMessage="Email Invalido." ControlToValidate="tbEmail" Display="Dynamic" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" />
                    </div>
                </div>
                    <div class="form-group">
                    <label for="inputPassword" class="col-lg-4 control-label">Email Emergencia</label>
                    <div class="col-lg-7">
                        <asp:TextBox ID="tbEmailEmergencia" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="tbEmailEmergencia" runat="server" CssClass="alert-danger" ErrorMessage="Debe Ingresar EMAIL Emergencia" Text="" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID=RegularExpressionValidator1 runat="server" ErrorMessage="Email Invalido." CssClass="alert-danger" ControlToValidate="tbEmailEmergencia" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" Display="Dynamic" />
                    </div>
                </div>
                <div class="form-group">
                        <label for="inputPassword" class="col-lg-6 control-label"><br /></label>
                        <div class="col-md-3">
                        <asp:Button ID="btnAgregar" runat="server" Text="Agregar" CssClass="btn btn-primary xt-center" OnClick="btnAgregar_Click" />
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>

</asp:Content>
