<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="ventas.aspx.cs" Inherits="VIEW.ventas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
       <div class="container">
            <h1 class="text-center">LANSKYPAL</h1>
            <ul class="nav nav-tabs nav-justified" role="tablist">
                <li><a href="index.aspx">Home</a></li>
                <li class="active"><a href="ventas.aspx">Ventas</a></li>
                <li ><a href="vuelos.aspx">Vuelos</a></li>
            </ul>
        </div>
        <ol class="breadcrumb text-center small">
          <li ><a href="index.aspx">Home</a></li>
          <li class="active">Ventas</li>
        </ol>
    </header>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4 jumbotron form-horizontal" role="form">   
             <div class="form-group">
            <label for="inputPassword" class="col-lg-4 control-label">Registre Cliente</label>
                <div class="col-lg-7">
                    <a class="btn btn-primary" href="cliente.aspx" role="button">Agregar</a>
                </div>
            </div>     
            <div class="form-group">
            <label for="inputPassword" class="col-lg-4 control-label">Ciudad Origen</label>
                <div class="col-lg-7">
                  <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
            <label for="inputPassword" class="col-lg-4 control-label">Ciudad Destino</label>
                <div class="col-lg-7">
                  <input type="password" class="form-control" id="Password1" placeholder="Contraseña">
                </div>
            </div>
            <div class="form-group">
            <label for="inputPassword" class="col-lg-4 control-label">Seleccione Fecha</label>
                <div class="col-lg-7">
                         <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px" >
                             <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                             <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                             <OtherMonthDayStyle ForeColor="#CC9966" />
                             <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                             <SelectorStyle BackColor="#FFCC66" />
                             <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                             <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                            </asp:Calendar>
                </div>  
            </div>
        </div>
    </div>

    
    
            
</asp:Content>
