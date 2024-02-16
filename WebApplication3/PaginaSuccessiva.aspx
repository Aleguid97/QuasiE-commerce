<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PaginaSuccessiva.aspx.cs" Inherits="WebApplication3.PaginaSuccessiva" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h2>Dettagli Prodotto</h2>
        <div class="row">
            <div class="col-md-6">
                <asp:Image ID="imgProdotto" runat="server" CssClass="img-fluid" />
            </div>
            <div class="col-md-6">
                <h3>Nome Prodotto:</h3>
                <asp:Label ID="lblNomeProdotto" runat="server" Text=""></asp:Label>
                <h3>Prezzo:</h3>
                <asp:Label ID="lblPrezzo" runat="server" Text=""></asp:Label>
                <asp:Button ID="Button2" runat="server" Text="Home" class="btn btn-success d-block mt-5" Onclick="Home"/>
            </div>
        </div>
    </div>
</asp:Content>
