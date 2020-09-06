<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ProiectDB.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Informatii aplicatie</h2>
    <h3>Aplicatie gestionare bussines de tip inchirieri auto.</h3>
    <p>Aplicatia gestioneaza o baza de date cu 5 tabele care sunt esentiale pentru acest tip de bussines.</p>
    <ul>
        <li>Clienti</li>
        <li>Birouri Inchirieri</li>
        <li>Tipul masinilor inchiriate</li>
        <li>Masini</li>
        <li>Rezervari</li>
    </ul>
    <p>Aplicatia permite operatiile de insert,update si delete pe tabelele mai sus prezentate.</p>
    <address>
        <strong>Email:</strong>   <a href="mailto:florentinmircea@gmail.com">florentinmircea@gmail.com</a><br />
    </address>
</asp:Content>
