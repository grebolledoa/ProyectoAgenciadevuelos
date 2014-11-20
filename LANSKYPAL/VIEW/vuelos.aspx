<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="vuelos.aspx.cs" Inherits="VIEW.vuelos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
       <div class="container">
            <h1 class="text-center">LANSKYPAL</h1>
            <ul class="nav nav-tabs nav-justified" role="tablist">
                <li><a href="index.aspx">Home</a></li>
                <li><a href="ventas.aspx">Ventas</a></li>
                <li class="active"><a href="vuelos.aspx">Vuelos</a></li>
            </ul>
        </div>
        <ol class="breadcrumb text-center small">
          <li ><a href="index.aspx">Home</a></li>
          <li class="active">Vuelos</li>
        </ol>
    </header>
    <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <p class="text-center">
                    <a href="#" class="btn btn-primary">Agregar</a>
                    <a href="#" class="btn btn-success">Modificar</a>
                    <a href="#" class="btn btn-danger">Eliminar</a>
                    <a href="ciudades.aspx" class="btn btn-primary">Ciudades</a>
                </p>
            </div>
        </div>
    </div>
    <asp:Panel ID="pnl_agregar" runat="server" CssClass="">
        <div class="row">
        <div class="col-md-4"> </div>
        <div class="col-md-4 jumbotron form-horizontal" role="form">   
            <div class="form-group">
                <label for="inputPassword" class="col-lg-4 control-label">Registre id</label>
                <div class="col-lg-7">
                    <asp:TextBox ID="tbId" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="tbID" runat="server" ErrorMessage="Debe Ingresar ID" Text="" Display="Dynamic" CssClass="alert-danger"></asp:RequiredFieldValidator>
                </div>
            </div> 
            <div class="form-group">
                <label for="inputPassword" class="col-lg-4 control-label">Registre hora</label>
                <div class="col-lg-7">
                    <asp:TextBox ID="tbHora" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="tbHora" runat="server" ErrorMessage="Debe Ingresar HORA" Text="" Display="Dynamic" CssClass="alert-danger"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbHora" ErrorMessage="Reingrese Hora" Display="Dynamic"  CssClass="alert-danger" ValidationExpression="(0?[0-2])(1?[0-9]):([0-5])([0-9])"></asp:RegularExpressionValidator>
                </div>
            </div> 
            <div class="form-group">
            <label for="inputPassword" class="col-lg-4 control-label">Ciudad Origen</label>
                <div class="col-lg-7">
                    <asp:DropDownList ID="ddl_ID" runat="server" DataSourceID="SqlDataSource1" DataTextField="NOMBRE_CIUDAD" DataValueField="ID_CIUDAD" CssClass="form-control input-mg" ></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="Data Source=Gustavo;Initial Catalog=Aerolinea;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [ID_CIUDAD], [NOMBRE_CIUDAD] FROM [CIUDAD]"></asp:SqlDataSource>
                </div>
            </div> 
            <div class="form-group">
                <label for="inputPassword" class="col-lg-4 control-label">Ciudad Destino</label>
                <div class="col-lg-7">
                     <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="NOMBRE_CIUDAD" DataValueField="ID_CIUDAD" CssClass="form-control input-mg" ></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString="Data Source=Gustavo;Initial Catalog=Aerolinea;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [ID_CIUDAD], [NOMBRE_CIUDAD] FROM [CIUDAD]"></asp:SqlDataSource>
                </div>
            </div> 
            <div class="form-group">
                <label for="inputPassword" class="col-lg-4 control-label">Registre Valor</label>
                <div class="col-lg-7">
                    <asp:TextBox ID="tbValor" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="tbValor" runat="server" ErrorMessage="Debe Ingresar Valor" Text="" Display="Dynamic" CssClass="alert-danger"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Rango 20000 - 1000000" ControlToValidate="tbValor" Display="Dynamic" CssClass="alert-danger" MaximumValue="1500000" MinimumValue="20000" Type="Integer"></asp:RangeValidator>
                </div>
            </div> 
            <div class="form-group">
                 <label for="inputPassword" class="col-lg-6 control-label"><br /></label>
                 <div class="col-md-3">
                    <asp:Button ID="btnAgregar" runat="server" Text="Agregar" CssClass="btn btn-primary xt-center"/>
                     
                </div>
            </div>
        </div>
        </div>
    </asp:Panel>

    <asp:Panel ID="pnl_modificar" runat="server" CssClass="hidden">
        <div class="row">
            <div class="col-md-4"> </div>
            <div class="col-md-4 jumbotron form-horizontal" role="form">   
                <div class="form-group">
                    <label for="inputPassword" class="col-lg-4 control-label">Registre id</label>
                    <div class="col-lg-7">
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div> 
            </div>
        </div>
    </asp:Panel>
      <asp:Panel ID="pnl_eliminar" runat="server" CssClass="hidden">
        <div class="row">
            <div class="col-md-4"> </div>
            <div class="col-md-4 jumbotron form-horizontal" role="form">   
                <div class="form-group">
                    <label for="inputPassword" class="col-lg-4 control-label">Registre id</label>
                    <div class="col-lg-7">
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div> 
            </div>
        </div>
    </asp:Panel>

</asp:Content>
