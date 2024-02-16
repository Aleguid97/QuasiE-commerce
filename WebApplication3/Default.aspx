<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication3._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <asp:Repeater ID="ProductRepeater" runat="server">
                <HeaderTemplate>
                    <div class="row">
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="col-md-3">
                        <div class="card">
                          <img class="card-img-top" src='<%# Eval("UrlImmagine") %>'"/>
                            <div class="card-body">
                                <h5 ID="titolo" class="card-title text-black"><%# Eval("Nome") %></h5>
                                <p ID="descrizione" class="card-text text-black"><%# Eval("Descrizione") %></p>
                                <p ID="prezzo" class="card-text text-black"> €<%# Eval("Prezzo") %></p>
                                <asp:Button ID="Button1" runat="server" Text="Dettagli" class="btn btn-primary" Onclick="Button1_Click" CommandArgument='<%# Eval("Id") %>'/>
                                <asp:Button ID="Button2" runat="server" Text="Carrello" class="btn btn-success" Onclick="Carrello" />

                            </div>
                        </div>
                    </div>
                </ItemTemplate>
                <FooterTemplate>
                    <div></div>
                </FooterTemplate>
            </asp:Repeater>
    </main>

</asp:Content>
