<%@ Page Title="" Language="C#" MasterPageFile="~/SitioMaestro.Master" AutoEventWireup="true" CodeBehind="cliente.aspx.cs" Inherits="VIEWS.cliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header class="container">
        <ul class="nav nav-tabs nav-justified">
          <li role="presentation"><a href="index.aspx">Home</a></li>
          <li role="presentation" class="active"><a href="cliente.aspx">Clientes</a></li>
          <li role="presentation"><a href="pasaje.aspx">Pasajes</a></li>
          <li role="presentation"><a href="vuelo.aspx">Vuelos</a></li>
       </ul>
    </header>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                Rut <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
            </div>
            
        </div>
    </div>
</asp:Content>
