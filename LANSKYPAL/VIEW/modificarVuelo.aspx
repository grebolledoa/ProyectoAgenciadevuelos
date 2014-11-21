<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="modificarVuelo.aspx.cs" Inherits="VIEW.modificarVuelo" %>
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
                    <a href="EliminarVuelo.aspx" class="btn btn-danger">Eliminar</a>
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
                    <asp:Button ID="btnCargar" runat="server" Text="cargar" CssClass="btn btn-default xt-center" OnClick="btnCargar_Click"/>
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
                <div class="col-lg-3">
                    <asp:Button ID="btnCargar2" runat="server" Text="cargar" CssClass="btn btn-default xt-center" OnClick="btnCargar2_Click"/>
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
                    <asp:DropDownList ID="ddlOrigen" runat="server" DataSourceID="SqlDataSource1" DataTextField="NOMBRE_CIUDAD" DataValueField="ID_CIUDAD" CssClass="form-control input-mg" ></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="Data Source=Gustavo;Initial Catalog=Aerolinea;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [ID_CIUDAD], [NOMBRE_CIUDAD] FROM [CIUDAD]"></asp:SqlDataSource>
                </div>
            </div> 
            <div class="form-group">
                <label for="inputPassword" class="col-lg-4 control-label">Ciudad Destino</label>
                <div class="col-lg-7">
                    <asp:DropDownList ID="ddlDestino" runat="server" DataSourceID="SqlDataSource1" DataTextField="NOMBRE_CIUDAD" DataValueField="ID_CIUDAD" CssClass="form-control input-mg" ></asp:DropDownList>
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
                    <asp:Button ID="btnAgregar" runat="server" Text="Modificar" CssClass="btn btn-primary xt-center" OnClick="btnAgregar_Click"/>
                </div>
            </div>
        </div>
        </div>
    </asp:Panel>

</asp:Content>
