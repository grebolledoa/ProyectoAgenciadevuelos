<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="VIEW.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
        <div class="container">
            <h1 class="text-center">LANSKYPAL</h1>
            <ul class="nav nav-tabs nav-justified" role="tablist">
                <li class="active"><a href="index.aspx">Home</a></li>
                <li ><a href="ventas.aspx">Ventas</a></li>
                <li ><a href="vuelos.aspx">Vuelos</a></li>
            </ul>
        </div>
        <ol class="breadcrumb text-center small">
                <li class="active">Home</li>
        </ol>
    </header>
    
    <div class="container">
        <div class="jumbotron">
            <div class="row">
                <div class="col-md-9"> 
                    <h1 class="text-center">LANSKYPAL</h1>
                    <p class="text-justify">LANSKYPAL se constituyó como empresa estatal en el año 
                        1999 para prestar servicios de transporte aéreo de pasajeros, carga y correspondencia. Tras operar durante 10 años como empresa estatal, 
                        en 2009 el Estado de Chile vendió el 51% de su capital accionario a inversionistas nacionales y a Scandinavian Airlines System (SAS), 
                        comenzando así su proceso de privatización.</p>
                    <p><a class="btn btn-primary btn-lg" href="ventas.aspx" role="button">ELIGE TU VUELO</a></p>
                </div>
                <div class="col-md-3">
                    <img src="img/avion-moviles.jpg" alt="" height="100" class="img-thumbnail"/> 
                    <img src="img/avion-moviles.jpg" alt="" height="100" class="img-thumbnail"/> 
                    <img src="img/avion-moviles.jpg" alt="" height="100" class="img-thumbnail"/> 
                    <img src="img/avion-moviles.jpg" alt="" height="100" class="img-thumbnail"/> 
                </div>
            </div>
        </div>
    </div>
</asp:Content>
