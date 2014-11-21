<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="ClientesPorVuelo.aspx.cs" Inherits="VIEW.ClientesPorVuelo" %>
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
        <div class="col-md-5 jumbotron form-horizontal" role="form">   
            <div class="form-group">
            <label for="inputPassword" class="col-lg-4 control-label">Seleccione id</label>
                <div class="col-lg-4">
                    <asp:DropDownList ID="ddlID" CssClass="form-control input-mg"  runat="server" DataSourceID="SqlDataSource3" DataTextField="ID_VUELO" DataValueField="ID_VUELO"></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString="Data Source=GUSTAVO;Initial Catalog=Aerolinea;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [ID_VUELO] FROM [VUELO]"></asp:SqlDataSource>
                </div>
                <div class="col-lg-3">
                    <asp:Button ID="btnCargar" runat="server" Text="Cargar" CssClass="btn btn-primary xt-center" OnClick="btnCargar_Click" />
                </div>
            </div>
            <div class="form-group">
            <label for="inputPassword" class="col-lg-4 control-label">Seleccione Hora</label>
                <div class="col-lg-4">
                    <asp:DropDownList ID="ddlHora" CssClass="form-control input-mg"  runat="server" DataSourceID="SqlDataSource4" DataTextField="HORA" DataValueField="HORA"></asp:DropDownList>
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
                    <asp:Button ID="btnAgregar" runat="server" Text="Mostrar" CssClass="btn btn-primary xt-center" OnClick="btnAgregar_Click" />
                </div>
            </div>
        </div>
    </div>
    
        <div class="row container">
                <div class="col-lg-3"></div>
                <div class="col-lg-4">
                    <asp:GridView ID="GridView1" CssClass="table table-striped" runat="server" AutoGenerateColumns="False" DataKeyNames="RUT" DataSourceID="">
                        <Columns>
                            <asp:BoundField DataField="RUT" HeaderText="RUT" ReadOnly="True" SortExpression="RUT"></asp:BoundField>
                            <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE"></asp:BoundField>
                            <asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" SortExpression="DIRECCION"></asp:BoundField>
                            <asp:BoundField DataField="TELEFONO" HeaderText="TELEFONO" SortExpression="TELEFONO"></asp:BoundField>
                            <asp:BoundField DataField="TELEFONO_EMERGENCIA" HeaderText="TELEFONO_EMERGENCIA" SortExpression="TELEFONO_EMERGENCIA"></asp:BoundField>
                            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL"></asp:BoundField>
                            <asp:BoundField DataField="EMAIL_EMERGENCIA" HeaderText="EMAIL_EMERGENCIA" SortExpression="EMAIL_EMERGENCIA"></asp:BoundField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="Data Source=GUSTAVO;Initial Catalog=Aerolinea;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT CLIENTE.RUT, CLIENTE.NOMBRE, CLIENTE.DIRECCION, CLIENTE.TELEFONO, CLIENTE.TELEFONO_EMERGENCIA, CLIENTE.EMAIL, CLIENTE.EMAIL_EMERGENCIA FROM PASAJE INNER JOIN CLIENTE ON PASAJE.RUT = CLIENTE.RUT AND PASAJE.RUT = CLIENTE.RUT WHERE (PASAJE.ID_VUELO = @ID_VUELO) AND (PASAJE.HORA = @HORA)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlID" PropertyName="SelectedValue" Name="ID_VUELO"></asp:ControlParameter>
                            <asp:ControlParameter ControlID="ddlHora" PropertyName="SelectedValue" Name="HORA"></asp:ControlParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
        </div>
    
</asp:Content>
