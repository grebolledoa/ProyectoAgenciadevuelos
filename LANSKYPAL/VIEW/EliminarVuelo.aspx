<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="EliminarVuelo.aspx.cs" Inherits="VIEW.EliminarVuelo" %>
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
                    <a href="vuelos.aspx" class="btn btn-primary">Agregar</a>
                    <a href="modificarVuelo.aspx" class="btn btn-success">Modificar</a>
                    <a href="#" class="btn btn-danger">Eliminar</a>
                </p>
            </div>
        </div>
    </div>

    <asp:Panel ID="pnl_agregar" runat="server" CssClass="">
        <div class="row">
        <div class="col-md-4"> </div>
        <div class="col-md-4 jumbotron form-horizontal" role="form">   
            <div class="form-group">
                <label for="inputPassword" class="col-lg-4 control-label">Seleccion id</label>
                <div class="col-lg-5">
                    <asp:DropDownList ID="ddlID"  runat="server" CssClass="form-control input-mg" DataSourceID="SqlDataSource3" DataTextField="ID_VUELO" DataValueField="ID_VUELO"></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString="Data Source=GUSTAVO;Initial Catalog=Aerolinea;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [ID_VUELO]  FROM [VUELO]"></asp:SqlDataSource>
                </div>
                <div class="col-lg-3">
                    <asp:Button ID="btnCargar" runat="server" Text="cargar" CssClass="btn btn-default xt-center" OnClick="btnCargar_Click" />
                </div>
            </div> 
            <div class="form-group">
                <label for="inputPassword" class="col-lg-4 control-label">Seleccione hora</label>
                <div class="col-lg-5">
                    <asp:DropDownList ID="ddlHora" runat="server" CssClass="form-control input-mg" DataSourceID="SqlDataSource4" DataTextField="HORA" DataValueField="HORA"></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString="Data Source=GUSTAVO;Initial Catalog=Aerolinea;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [HORA] FROM [VUELO] WHERE ([ID_VUELO] = @ID_VUELO)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlID" PropertyName="SelectedValue" Name="ID_VUELO" Type="String"></asp:ControlParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div> 
            <div class="form-group">
                    <label for="inputPassword" class="col-lg-6 control-label"><br /></label>
                    <div class="col-md-3">
                    <asp:Button ID="btnAgregar" runat="server" Text="Eliminar" CssClass="btn btn-primary xt-center" OnClick="btnAgregar_Click" />
                </div>
            </div>
        </div>
        </div>
    </asp:Panel>
</asp:Content>
