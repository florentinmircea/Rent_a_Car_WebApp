<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Birouri_old.aspx.cs" Inherits="ProiectDB._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-4">
            <h2>Birouri inchirieri</h2>
            
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Proiect_DB6ConnectionString2 %>" SelectCommand="SELECT * FROM [birouri_inchirieri] ORDER BY [locatie_id]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [birouri_inchirieri] WHERE [locatie_id] = @original_locatie_id AND [strada] = @original_strada AND [numarul] = @original_numarul AND [oras] = @original_oras AND [judet] = @original_judet AND [telefon] = @original_telefon" InsertCommand="INSERT INTO [birouri_inchirieri] ([strada], [numarul], [oras], [judet], [telefon]) VALUES (@strada, @numarul, @oras, @judet, @telefon)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [birouri_inchirieri] SET [strada] = @strada, [numarul] = @numarul, [oras] = @oras, [judet] = @judet, [telefon] = @telefon WHERE [locatie_id] = @original_locatie_id AND [strada] = @original_strada AND [numarul] = @original_numarul AND [oras] = @original_oras AND [judet] = @original_judet AND [telefon] = @original_telefon">
                <DeleteParameters>
                    <asp:Parameter Name="original_locatie_id" Type="Int32" />
                    <asp:Parameter Name="original_strada" Type="String" />
                    <asp:Parameter Name="original_numarul" Type="String" />
                    <asp:Parameter Name="original_oras" Type="String" />
                    <asp:Parameter Name="original_judet" Type="String" />
                    <asp:Parameter Name="original_telefon" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="strada" Type="String" />
                    <asp:Parameter Name="numarul" Type="String" />
                    <asp:Parameter Name="oras" Type="String" />
                    <asp:Parameter Name="judet" Type="String" />
                    <asp:Parameter Name="telefon" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="strada" Type="String" />
                    <asp:Parameter Name="numarul" Type="String" />
                    <asp:Parameter Name="oras" Type="String" />
                    <asp:Parameter Name="judet" Type="String" />
                    <asp:Parameter Name="telefon" Type="String" />
                    <asp:Parameter Name="original_locatie_id" Type="Int32" />
                    <asp:Parameter Name="original_strada" Type="String" />
                    <asp:Parameter Name="original_numarul" Type="String" />
                    <asp:Parameter Name="original_oras" Type="String" />
                    <asp:Parameter Name="original_judet" Type="String" />
                    <asp:Parameter Name="original_telefon" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
            <asp:GridView ID="Birouri1" runat="server" AutoGenerateColumns="False" DataKeyNames="locatie_id" DataSourceID="SqlDataSource5" EmptyDataText="There are no data records to display." Width="845px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="locatie_id" HeaderText="locatie_id" InsertVisible="False" ReadOnly="True" SortExpression="locatie_id" />
                    <asp:BoundField DataField="strada" HeaderText="strada" SortExpression="strada" />
                    <asp:BoundField DataField="numarul" HeaderText="numarul" SortExpression="numarul" />
                    <asp:BoundField DataField="oras" HeaderText="oras" SortExpression="oras" />
                    <asp:BoundField DataField="judet" HeaderText="judet" SortExpression="judet" />
                    <asp:BoundField DataField="telefon" HeaderText="telefon" SortExpression="telefon" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:Label ID="lstradab" runat="server" Height="20px" Text="Strada"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="stradab" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lnumarb" runat="server" Height="20px" Text="Numar"></asp:Label>
&nbsp;
            <asp:TextBox ID="numarb" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lorasb" runat="server" Height="20px" Text="Oras"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="orasb" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="ljudetb" runat="server" Height="20px" Text="Judet"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="judetb" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="ltelefonb" runat="server" Height="20px" Text="Telefon"></asp:Label>
&nbsp;<asp:TextBox ID="telefonb" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button_add_birou" runat="server" Text="Adauga birou nou" />
            <br />
            
        </div>
    </div>

</asp:Content>
