<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="_Clienti_old.aspx.cs" Inherits="ProiectDB._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
            <h2>Clienti</h2>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Proiect_DB6ConnectionString2 %>" DeleteCommand="DELETE FROM [clienti] WHERE [client_id] = @original_client_id AND [cnp] = @original_cnp AND [nume] = @original_nume AND [prenume] = @original_prenume AND [telefon] = @original_telefon AND [judet] = @original_judet AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL))" InsertCommand="INSERT INTO [clienti] ([cnp], [nume], [prenume], [telefon], [judet], [email]) VALUES (@cnp, @nume, @prenume, @telefon, @judet, @email)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [clienti]" UpdateCommand="UPDATE [clienti] SET [cnp] = @cnp, [nume] = @nume, [prenume] = @prenume, [telefon] = @telefon, [judet] = @judet, [email] = @email WHERE [client_id] = @original_client_id AND [cnp] = @original_cnp AND [nume] = @original_nume AND [prenume] = @original_prenume AND [telefon] = @original_telefon AND [judet] = @original_judet AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_client_id" Type="Int32" />
                    <asp:Parameter Name="original_cnp" Type="String" />
                    <asp:Parameter Name="original_nume" Type="String" />
                    <asp:Parameter Name="original_prenume" Type="String" />
                    <asp:Parameter Name="original_telefon" Type="String" />
                    <asp:Parameter Name="original_judet" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="cnp" Type="String" />
                    <asp:Parameter Name="nume" Type="String" />
                    <asp:Parameter Name="prenume" Type="String" />
                    <asp:Parameter Name="telefon" Type="String" />
                    <asp:Parameter Name="judet" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="cnp" Type="String" />
                    <asp:Parameter Name="nume" Type="String" />
                    <asp:Parameter Name="prenume" Type="String" />
                    <asp:Parameter Name="telefon" Type="String" />
                    <asp:Parameter Name="judet" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="original_client_id" Type="Int32" />
                    <asp:Parameter Name="original_cnp" Type="String" />
                    <asp:Parameter Name="original_nume" Type="String" />
                    <asp:Parameter Name="original_prenume" Type="String" />
                    <asp:Parameter Name="original_telefon" Type="String" />
                    <asp:Parameter Name="original_judet" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="Clienti1" runat="server" DataSourceID="SqlDataSource1" Width="845px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <br />
     <asp:Label ID="Label1" runat="server" Height="20px" Text="CNP"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Height="20px" Text="Nume"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Height="20px" Text="Prenume"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Height="20px" Text="Telefon"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Height="20px" Text="Judet"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Height="20px" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Adaugare Client" />
           
            
           

</asp:Content>
