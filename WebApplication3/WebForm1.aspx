<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="container mt-5">
    <h2>Carrello</h2>
    <div class="row">
        <div class="col-lg-8">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Prodotto</th>
                        <th scope="col">Prezzo</th>
                        <th scope="col">Quantità</th>
                        <th scope="col">Totale</th>
                        <th scope="col"></th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Esempio di riga del carrello -->
                    <tr>
                        <td>Nome Prodotto 1</td>
                        <td>$19.99</td>
                        <td>
                            <input type="number" class="form-control" value="1" min="1">
                        </td>
                        <td>$19.99</td>
                        <td>
                            <button class="btn btn-danger btn-sm">Rimuovi</button>
                        </td>
                    </tr>
                    <!-- Aggiungi più righe del carrello qui... -->
                </tbody>
            </table>
        </div>

        <div class="col-lg-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Riepilogo Ordine</h4>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            Subtotale
                            <span class="badge bg-primary">€<%# Eval("Prezzo") %></span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            Spedizione
                            <span class="badge bg-primary">€5.00</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            Totale
                            <span class="badge bg-success">€</span>
                        </li>
                    </ul>
                    <button class="btn btn-success mt-3">Procedi all'acquisto</button>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-rppw/b1gg9GlCJecbZRzKXP0nc8S8ZK8GxOO1EFOJY6j1GweWd5z9LjjnvuqEqus1" crossorigin="anonymous"></script>
</asp:Content>
