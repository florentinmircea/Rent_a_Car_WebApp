<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Masini.aspx.cs" Inherits="ProiectDB.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-4">
            <h2>Masini</h2>
            
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Proiect_DB6ConnectionString2 %>" SelectCommand="SELECT * FROM [masini]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [masini] WHERE [masina_id] = @original_masina_id AND (([locatiecurenta_id] = @original_locatiecurenta_id) OR ([locatiecurenta_id] IS NULL AND @original_locatiecurenta_id IS NULL)) AND (([tip_id] = @original_tip_id) OR ([tip_id] IS NULL AND @original_tip_id IS NULL)) AND [culoare] = @original_culoare AND [marca] = @original_marca AND [model] = @original_model AND (([descriere] = @original_descriere) OR ([descriere] IS NULL AND @original_descriere IS NULL)) AND [data_cumparare] = @original_data_cumparare AND [pret_zi] = @original_pret_zi" InsertCommand="INSERT INTO [masini] ([locatiecurenta_id], [tip_id], [culoare], [marca], [model], [descriere], [data_cumparare], [pret_zi]) VALUES (@locatiecurenta_id, @tip_id, @culoare, @marca, @model, @descriere, @data_cumparare, @pret_zi)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [masini] SET [locatiecurenta_id] = @locatiecurenta_id, [tip_id] = @tip_id, [culoare] = @culoare, [marca] = @marca, [model] = @model, [descriere] = @descriere, [data_cumparare] = @data_cumparare, [pret_zi] = @pret_zi WHERE [masina_id] = @original_masina_id AND (([locatiecurenta_id] = @original_locatiecurenta_id) OR ([locatiecurenta_id] IS NULL AND @original_locatiecurenta_id IS NULL)) AND (([tip_id] = @original_tip_id) OR ([tip_id] IS NULL AND @original_tip_id IS NULL)) AND [culoare] = @original_culoare AND [marca] = @original_marca AND [model] = @original_model AND (([descriere] = @original_descriere) OR ([descriere] IS NULL AND @original_descriere IS NULL)) AND [data_cumparare] = @original_data_cumparare AND [pret_zi] = @original_pret_zi">
                <DeleteParameters>
                    <asp:Parameter Name="original_masina_id" Type="Int32" />
                    <asp:Parameter Name="original_locatiecurenta_id" Type="Int32" />
                    <asp:Parameter Name="original_tip_id" Type="Int32" />
                    <asp:Parameter Name="original_culoare" Type="String" />
                    <asp:Parameter Name="original_marca" Type="String" />
                    <asp:Parameter Name="original_model" Type="String" />
                    <asp:Parameter Name="original_descriere" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_data_cumparare" />
                    <asp:Parameter Name="original_pret_zi" Type="Double" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="locatiecurenta_id" Type="Int32" />
                    <asp:Parameter Name="tip_id" Type="Int32" />
                    <asp:Parameter Name="culoare" Type="String" />
                    <asp:Parameter Name="marca" Type="String" />
                    <asp:Parameter Name="model" Type="String" />
                    <asp:Parameter Name="descriere" Type="String" />
                    <asp:Parameter DbType="Date" Name="data_cumparare" />
                    <asp:Parameter Name="pret_zi" Type="Double" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="locatiecurenta_id" Type="Int32" />
                    <asp:Parameter Name="tip_id" Type="Int32" />
                    <asp:Parameter Name="culoare" Type="String" />
                    <asp:Parameter Name="marca" Type="String" />
                    <asp:Parameter Name="model" Type="String" />
                    <asp:Parameter Name="descriere" Type="String" />
                    <asp:Parameter DbType="Date" Name="data_cumparare" />
                    <asp:Parameter Name="pret_zi" Type="Double" />
                    <asp:Parameter Name="original_masina_id" Type="Int32" />
                    <asp:Parameter Name="original_locatiecurenta_id" Type="Int32" />
                    <asp:Parameter Name="original_tip_id" Type="Int32" />
                    <asp:Parameter Name="original_culoare" Type="String" />
                    <asp:Parameter Name="original_marca" Type="String" />
                    <asp:Parameter Name="original_model" Type="String" />
                    <asp:Parameter Name="original_descriere" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_data_cumparare" />
                    <asp:Parameter Name="original_pret_zi" Type="Double" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
            

            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="masina_id" DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display." Width="845px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="masina_id" HeaderText="masina_id" InsertVisible="False" ReadOnly="True" SortExpression="masina_id" />
                    <asp:BoundField DataField="locatiecurenta_id" HeaderText="locatiecurenta_id" SortExpression="locatiecurenta_id" ReadOnly="True" />
                    <asp:BoundField DataField="tip_id" HeaderText="tip_id" SortExpression="tip_id" ReadOnly="True" />
                    <asp:BoundField DataField="culoare" HeaderText="culoare" SortExpression="culoare" />
                    <asp:BoundField DataField="marca" HeaderText="marca" SortExpression="marca" />
                    <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" />
                    <asp:BoundField DataField="descriere" HeaderText="descriere" SortExpression="descriere" />
                    <asp:BoundField DataField="data_cumparare" HeaderText="data_cumparare" SortExpression="data_cumparare" />
                    <asp:BoundField DataField="pret_zi" HeaderText="pret_zi" SortExpression="pret_zi" />
                </Columns>
            </asp:GridView>
            <br />
            <h3>Categorii masini</h3>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Proiect_DB6ConnectionString2 %>" SelectCommand="SELECT * FROM [tip_masina]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [tip_masina] WHERE [tip_id] = @original_tip_id AND [tip_nume] = @original_tip_nume AND (([tip_descriere] = @original_tip_descriere) OR ([tip_descriere] IS NULL AND @original_tip_descriere IS NULL))" InsertCommand="INSERT INTO [tip_masina] ([tip_nume], [tip_descriere]) VALUES (@tip_nume, @tip_descriere)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [tip_masina] SET [tip_nume] = @tip_nume, [tip_descriere] = @tip_descriere WHERE [tip_id] = @original_tip_id AND [tip_nume] = @original_tip_nume AND (([tip_descriere] = @original_tip_descriere) OR ([tip_descriere] IS NULL AND @original_tip_descriere IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_tip_id" Type="Int32" />
                    <asp:Parameter Name="original_tip_nume" Type="String" />
                    <asp:Parameter Name="original_tip_descriere" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="tip_nume" Type="String" />
                    <asp:Parameter Name="tip_descriere" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="tip_nume" Type="String" />
                    <asp:Parameter Name="tip_descriere" Type="String" />
                    <asp:Parameter Name="original_tip_id" Type="Int32" />
                    <asp:Parameter Name="original_tip_nume" Type="String" />
                    <asp:Parameter Name="original_tip_descriere" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="tip_id" DataSourceID="SqlDataSource4" Width="350px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="tip_id" HeaderText="tip_id" InsertVisible="False" ReadOnly="True" SortExpression="tip_id" />
                    <asp:BoundField DataField="tip_nume" HeaderText="tip_nume" SortExpression="tip_nume" />
                    <asp:BoundField DataField="tip_descriere" HeaderText="tip_descriere" SortExpression="tip_descriere" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            
             <h3>Adaugare masina</h3>

            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Proiect_DB6ConnectionString2 %>" SelectCommand="SELECT [locatie_id], [Locatie_preluare] FROM [bir_inchir]"></asp:SqlDataSource>
            <br />
            <asp:Label ID="Label1" runat="server" Height="20px" Text="Locatie curenta"></asp:Label>
&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource5" DataTextField="Locatie_preluare" DataValueField="locatie_id">
            </asp:DropDownList>
            <br />
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:Proiect_DB6ConnectionString2 %>" SelectCommand="SELECT [tip_id], [tip_nume] FROM [tip_masina]"></asp:SqlDataSource>
            <br />
            <asp:Label ID="Label2" runat="server" Height="20px" Text="Tip masina"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource6" DataTextField="tip_nume" DataValueField="tip_id">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Height="20px" Text="Culoare"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Height="20px" Text="Marca"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Height="20px" Text="Model"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Height="20px" Text="Descriere"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Height="20px" Text="Data cumparare"></asp:Label>
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Height="20px" Text="Pret/zi"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Adauga masina" />
            <br />
            <br />
            
             <h3>Adaugare categorie</h3>
            <p>
                <asp:Label ID="Label9" runat="server" Height="20px" Text="Nume"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label10" runat="server" Height="20px" Text="Descriere"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </p>
            <p>&nbsp;</p>
            <p>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Adauga categorie" />
            </p>
        </div>
    </div>
</asp:Content>
