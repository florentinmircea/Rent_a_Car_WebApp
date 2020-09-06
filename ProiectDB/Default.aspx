<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProiectDB._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-4">
            <h2>Rezervari</h2>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Proiect_DB6ConnectionString2 %>" SelectCommand="SELECT * FROM [rezervari_view1]">
            </asp:SqlDataSource>
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="rezervare_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="rezervare_id" HeaderText="rezervare_id" ReadOnly="True" SortExpression="rezervare_id"></asp:BoundField>
                    <asp:BoundField DataField="Nume" HeaderText="Nume" ReadOnly="True" SortExpression="Nume" />
                    <asp:BoundField DataField="Locatie_preluare" HeaderText="Locatie_preluare" ReadOnly="True" SortExpression="Locatie_preluare" />
                    <asp:BoundField DataField="Locatie_returnare" HeaderText="Locatie_returnare" ReadOnly="True" SortExpression="Locatie_returnare" />
                    <asp:BoundField DataField="Masina_inchiriata" HeaderText="Masina_inchiriata" ReadOnly="True" SortExpression="Masina_inchiriata" />
                    <asp:BoundField DataField="data_preluare" HeaderText="data_preluare" SortExpression="data_preluare" />
                    <asp:BoundField DataField="data_returnare" HeaderText="data_returnare" SortExpression="data_returnare" />
                    <asp:BoundField DataField="pret" HeaderText="pret" SortExpression="pret" />
                </Columns>
            </asp:GridView>
            <br />
            
            <h3>Adauga rezervare</h3>
            <p>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Proiect_DB6ConnectionString2 %>" SelectCommand="SELECT [client_id], [Nume] FROM [clienti_view]"></asp:SqlDataSource>
            </p>
            <p>
                <asp:Label ID="Label1" runat="server" Text="Nume"></asp:Label>
            </p>
            <p>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Nume" DataValueField="client_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:Proiect_DB6ConnectionString2 %>" SelectCommand="SELECT [locatie_id], [Locatie_preluare] FROM [bir_inchir]"></asp:SqlDataSource>
            </p>
            <p>
                <asp:Label ID="Label2" runat="server" Text="Locatie preluare"></asp:Label>
            </p>
            <p>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource8" DataTextField="Locatie_preluare" DataValueField="locatie_id">
                </asp:DropDownList>
            </p>
            <p>
                <asp:Label ID="Label3" runat="server" Text="Locatie returnare"></asp:Label>
            </p>
            <p>
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource8" DataTextField="Locatie_preluare" DataValueField="locatie_id">
                </asp:DropDownList>
            </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:Proiect_DB6ConnectionString2 %>" SelectCommand="SELECT [masina_id], [Marca], [pret_zi] FROM [masina_view]"></asp:SqlDataSource>
            </p>
            <p>
                <asp:Label ID="Label4" runat="server" Text="Masina"></asp:Label>
            </p>
            <p>
                <asp:DropDownList ID="DropDownMasini" runat="server" DataSourceID="SqlDataSource9" DataTextField="Marca" DataValueField="masina_id" AutoPostBack="True">
                </asp:DropDownList>
            </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:Proiect_DB6ConnectionString2 %>" SelectCommand="SELECT [pret_zi] FROM [masini] WHERE ([masina_id] = @masina_id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownMasini" Name="masina_id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p>
                <asp:Label ID="Label8" runat="server" Text="Pret pe zi"></asp:Label>
            </p>
            <p>
                <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource11" DataTextField="pret_zi" DataValueField="pret_zi">
                </asp:DropDownList>
            </p>
            <p>
                <asp:Label ID="Label5" runat="server" Text="Data preluare"></asp:Label>
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </p>
            <p>
                <asp:Label ID="Label6" runat="server" Text="Data returnare"></asp:Label>
                <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Adauga rezervare" />
            </p>

                <h3>Stergere rezervare</h3>

                <asp:Label ID="Label9" runat="server" Height="20px" Text="ID"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Height="23px" OnClick="Button2_Click" Text="Delete" Width="140px" />
            <p>
                &nbsp;</p>


        </div>
    </div>

</asp:Content>
