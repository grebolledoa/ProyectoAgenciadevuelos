<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="ModificarCliente.aspx.cs" Inherits="VIEW.Clientes.Modificar" %>
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
    <asp:Panel ID="Panel2" runat="server" CssClass="">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4 jumbotron form-horizontal" role="form">      
                <div class="form-group">
                <label for="inputPassword" class="col-lg-4 control-label">Rut</label>
                    <div class="col-lg-7">
                        <asp:DropDownList ID="ddl_rut" runat="server" DataSourceID="SqlDataSource1" DataTextField="RUT" DataValueField="RUT"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=Gustavo;Initial Catalog=Aerolinea;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [RUT] FROM [CLIENTE]"></asp:SqlDataSource>
                        <asp:Button ID="btnCargar" runat="server" Text="Cargar"  CssClass="btn btn-default" OnClick="btnCargar_Click" />
                    </div>
                </div>
                <div class="form-group">
                <label for="inputPassword" class="col-lg-4 control-label">Nombre</label>
                    <div class="col-lg-7">
                        <asp:TextBox ID="mtbNombre" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="mtbNombre" runat="server" ErrorMessage="Debe Ingresar Nombre" Text="" Display="Dynamic" CssClass="alert-danger" Enabled="False"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                <label for="inputPassword" class="col-lg-4 control-label">Direccion</label>
                    <div class="col-lg-7">
                        <asp:TextBox ID="mtbDireccion" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="mtbDireccion" runat="server" ErrorMessage="Debe Ingresar Direccion" Text="" Display="Dynamic" CssClass="alert-danger" Enabled="False"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="col-lg-4 control-label">Telefono</label>
                    <div class="col-lg-7">
                        <asp:TextBox ID="mtbTelefono" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="mtbTelefono" runat="server" ErrorMessage="Debe Ingresar Telefono" Text="" Display="Dynamic" CssClass="alert-danger" Enabled="False"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="Reingrese Telefono" Type="Integer" ControlToValidate="mtbTelefono" Display="Dynamic" MinimumValue="10000000" MaximumValue="999999999" CssClass="alert-danger" Enabled="False"></asp:RangeValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="col-lg-4 control-label">Telefono Emergencia</label>
                    <div class="col-lg-7">
                        <asp:TextBox ID="mtbTelefonoEmergencia" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" CssClass="alert-danger" ControlToValidate="mtbTelefonoEmergencia" runat="server" ErrorMessage="Debe Ingresar Telefono Emergencia" Text="" Display="Dynamic" Enabled="False"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator4" runat="server" CssClass="alert-danger" ErrorMessage="Reingrese Telefono Emergencia" Type="Integer" ControlToValidate="mtbTelefonoEmergencia" Display="Dynamic" MinimumValue="10000000" MaximumValue="999999999" Enabled="False"></asp:RangeValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="col-lg-4 control-label">Email</label>
                    <div class="col-lg-7">
                        <asp:TextBox ID="mtbEmail" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" CssClass="alert-danger" ControlToValidate="mtbEmail" runat="server" ErrorMessage="Debe Ingresar EMAIL" Text="" Display="Dynamic" Enabled="False"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID=RegularExpressionValidator3 runat="server" CssClass="alert-danger" ErrorMessage="Email Invalido." ControlToValidate="mtbEmail" Display="Dynamic" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" Enabled="False" />
                    </div>
                </div>
                    <div class="form-group">
                    <label for="inputPassword" class="col-lg-4 control-label">Email Emergencia</label>
                    <div class="col-lg-7">
                        <asp:TextBox ID="mtbEmailEmergencia" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="mtbEmailEmergencia" runat="server" CssClass="alert-danger" ErrorMessage="Debe Ingresar EMAIL Emergencia" Text="" Display="Dynamic" Enabled="False"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID=RegularExpressionValidator4 runat="server" ErrorMessage="Email Invalido." CssClass="alert-danger" ControlToValidate="mtbEmailEmergencia" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" Display="Dynamic" Enabled="False" />
                    </div>
                </div>
                <div class="form-group">
                        <label for="inputPassword" class="col-lg-6 control-label"><br /></label>
                        <div class="col-md-3">
                            <asp:Button ID="btnModificar" runat="server" Text="Modificar" CssClass="btn btn-primary" OnClick="btnModificar_Click" />
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>
</asp:Content>
