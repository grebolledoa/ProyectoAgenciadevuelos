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
        <div class="col-md-5 jumbotron form-horizontal" role="form">   
             <div class="form-group">
            <label for="inputPassword" class="col-lg-4 control-label">Seleccione Cliente</label>
                <div class="col-lg-7">
                      <asp:DropDownList ID="ddl_rut" runat="server" DataSourceID="SqlDataSource1" DataTextField="RUT" DataValueField="RUT"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=Gustavo;Initial Catalog=Aerolinea;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [RUT] FROM [CLIENTE]"></asp:SqlDataSource>
                        <a class="btn btn-primary" href="cliente.aspx" role="button">Agregar</a>
                </div>
            </div>     
            <div class="form-group">
                <div class="col-lg-1"></div>
                <div class="col-lg-4">
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped" GridLines="None"  AutoGenerateColumns="False" DataKeyNames="ID_VUELO,HORA" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="ID_VUELO" HeaderText="ID_VUELO" ReadOnly="True" SortExpression="ID_VUELO"></asp:BoundField>
                            <asp:BoundField DataField="HORA" HeaderText="HORA" ReadOnly="True" SortExpression="HORA"></asp:BoundField>
                            <asp:BoundField DataField="ID_CIUDAD" HeaderText="ID_CIUDAD" SortExpression="ID_CIUDAD"></asp:BoundField>
                            <asp:BoundField DataField="CIU_ID_CIUDAD" HeaderText="CIU_ID_CIUDAD" SortExpression="CIU_ID_CIUDAD"></asp:BoundField>
                            <asp:BoundField DataField="VALOR" HeaderText="VALOR" SortExpression="VALOR"></asp:BoundField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString="Data Source=GUSTAVO;Initial Catalog=Aerolinea;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [VUELO]"></asp:SqlDataSource>
                </div>
            </div>
            <div class="form-group">
            <label for="inputPassword" class="col-lg-4 control-label">Seleccione id</label>
                <div class="col-lg-7">
                    <asp:DropDownList ID="ddlID" CssClass="form-control input-mg"  runat="server" DataSourceID="SqlDataSource3" DataTextField="ID_VUELO" DataValueField="ID_VUELO"></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString="Data Source=GUSTAVO;Initial Catalog=Aerolinea;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [ID_VUELO] FROM [VUELO]"></asp:SqlDataSource>
                </div>
            </div>
            <div class="form-group">
            <label for="inputPassword" class="col-lg-4 control-label">Seleccione Hora</label>
                <div class="col-lg-7">
                    <asp:DropDownList ID="ddlHora" CssClass="form-control input-mg"  runat="server" DataSourceID="SqlDataSource4" DataTextField="HORA" DataValueField="HORA"></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString="Data Source=GUSTAVO;Initial Catalog=Aerolinea;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [HORA] FROM [VUELO] WHERE ([ID_VUELO] = @ID_VUELO)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlID" PropertyName="SelectedValue" Name="ID_VUELO" Type="String"></asp:ControlParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
            <div class="form-group">
            <label for="inputPassword" class="col-lg-4 control-label">Seleccione Asiento</label>
                <div class="col-lg-7">
                    <asp:DropDownList ID="ddl_asientos" runat="server"></asp:DropDownList>
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
