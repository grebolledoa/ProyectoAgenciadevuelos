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
                <asp:Button ID="Button1" runat="server" Text="Agregar" class="btn btn-primary" OnClick="Button1_Click"/>
                <asp:Button ID="Button2" runat="server" Text="Modificar" class="btn btn-success" OnClick="Button2_Click"/>
                <asp:Button ID="Button3" runat="server" Text="Eliminar" class="btn btn-danger" OnClick="Button3_Click"/>
            </p>
        </div>
    </div>
        </div>
    <asp:Panel ID="pnl_agregar" runat="server" CssClass="hidden">
        <div class="row">
        <div class="col-md-4"> </div>
        <div class="col-md-4 jumbotron form-horizontal" role="form">   
            <div class="form-group">
                <label for="inputPassword" class="col-lg-4 control-label">Registre id</label>
                <div class="col-lg-7">
                    <asp:TextBox ID="tbId" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div> 
            <div class="form-group">
                <label for="inputPassword" class="col-lg-4 control-label">Registre hora</label>
                <div class="col-lg-7">
                    <asp:TextBox ID="tbHora" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div> 
            <div class="form-group">
            <label for="inputPassword" class="col-lg-4 control-label">Ciudad Origen</label>
                <div class="col-lg-7">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div> 
            <div class="form-group">
                <label for="inputPassword" class="col-lg-4 control-label">Ciudad Destino</label>
                <div class="col-lg-7">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div> 
            <div class="form-group">
                <label for="inputPassword" class="col-lg-4 control-label">Registre Valor</label>
                <div class="col-lg-7">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
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
