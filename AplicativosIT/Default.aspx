<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AplicativosIT._Default" %>

<%@ Register Assembly="DevExpress.Web.v22.1, Version=22.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function OnCardSelectionChanged() {
            window.open("https://www.w3schools.com", "New Window", "width=1920, height=1080");
        }
        function ShowLoginWindow() {
            pcLogin.Show();
        }
        function ShowCreateAccountWindow() {
            pcCreateAccount.Show();
            tbUsername.Focus();
        }
        function onFileUploadComplete(s, e) {
            if (e.callbackData) {
                var fileData = e.callbackData.split('|');
                var fileName = fileData[0],
                    fileUrl = fileData[1],
                    fileSize = fileData[2];
                DXUploadedFilesContainer.AddFile(fileName, fileUrl, fileSize);
            }
        }    </script>
    <link href="./Styles/DefaultStyles.css" rel="stylesheet" type="text/css" />
    <div class="jumbotron">
        <h1 class="title">CG/Web</h1>
        <p class="lead">Menú de ambientes de desarrollo CG/Web</p>
    </div>
    <div class="row">
        <div class="col-md-4">

            <dx:ASPxCardView ID="ASPxCardView1" runat="server" AutoGenerateColumns="False" DataSourceID="CardView" KeyFieldName="id" EnableTheming="True" Theme="MetropolisBlue">
                <ClientSideEvents CardClick="OnCardSelectionChanged" />
                 <SettingsEditing Mode="PopupEditForm">
                    <BatchEditSettings EditMode="Card" />
                </SettingsEditing>
                 <SettingsBehavior AllowFocusedCard="True" AllowSelectByCardClick="true" />
                <SettingsPopup>
                    <FilterControl AutoUpdatePosition="False"></FilterControl>
                </SettingsPopup>

                <SettingsExport ExportSelectedCardsOnly="False"></SettingsExport>

                <Columns>
                    <dx:CardViewTextColumn FieldName="logo" VisibleIndex="1" Caption=" ">
                    </dx:CardViewTextColumn>
                    <dx:CardViewImageColumn FieldName="url" VisibleIndex="0" Caption=" ">
                    </dx:CardViewImageColumn>
                    <dx:CardViewTextColumn FieldName="name_envioronment" VisibleIndex="2" Caption=" ">
                    </dx:CardViewTextColumn>
                    <dx:CardViewTextColumn FieldName="id" ReadOnly="True" Visible="False" Caption=" ">
                    </dx:CardViewTextColumn>
                </Columns>

                <StylesExport>
                    <Card BorderSize="1" BorderSides="All"></Card>

                    <Group BorderSize="1" BorderSides="All"></Group>

                    <TabbedGroup BorderSize="1" BorderSides="All"></TabbedGroup>

                    <Tab BorderSize="1"></Tab>
                </StylesExport>
            </dx:ASPxCardView>
            <asp:SqlDataSource ID="CardView" runat="server" ConnectionString="<%$ ConnectionStrings:Projectestasi %>" DeleteCommand="DELETE FROM [info_environment] WHERE [id] = @id" InsertCommand="INSERT INTO [info_environment] ([logo], [url], [name_envioronment]) VALUES (@logo, @url, @name_envioronment)" SelectCommand="SELECT [logo], [url], [name_envioronment], [id] FROM [info_environment]" UpdateCommand="UPDATE [info_environment] SET [logo] = @logo, [url] = @url, [name_envioronment] = @name_envioronment WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="logo" Type="String" />
                    <asp:Parameter Name="url" Type="String" />
                    <asp:Parameter Name="name_envioronment" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="logo" Type="String" />
                    <asp:Parameter Name="url" Type="String" />
                    <asp:Parameter Name="name_envioronment" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT [url], [logo], [name_envioronment] FROM [info_environment]"></asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:documentsConnectionString2 %>" DeleteCommand="DELETE FROM [Users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Users] ([AccountName], [Password]) VALUES (@AccountName, @Password)" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [AccountName] = @AccountName, [Password] = @Password WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="AccountName" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="AccountName" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:documentsConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Users] ([Password]) VALUES (@Password)" SelectCommand="SELECT [Id], [Password] FROM [Users]" UpdateCommand="UPDATE [Users] SET [Password] = @Password,  WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int64" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Password" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Id" Type="Int64" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    <div style="margin: 16px auto; width: 160px;">
        <dx:ASPxButton ID="btShowModal" runat="server" Text="Show Modal Window" AutoPostBack="False" UseSubmitBehavior="false" Width="100%" Theme="iOS">
            <ClientSideEvents Click="function(s, e) { ShowLoginWindow(); }" />
        </dx:ASPxButton>
    </div>
    <dx:ASPxPopupControl ID="pcLogin" runat="server" Width="847px" CloseAction="CloseButton" CloseOnEscape="true" Modal="True"
        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" ClientInstanceName="pcLogin"
        HeaderText="Agregar" AllowDragging="True" PopupAnimationType="None" EnableViewState="False" AutoUpdatePosition="true" Theme="Material" Height="311px">
        <ClientSideEvents PopUp="function(s, e) { ASPxClientEdit.ClearGroup('entryGroup'); tbLogin.Focus(); }" />
        <ContentStyle>
            <Paddings PaddingBottom="5px" />
        </ContentStyle>
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataSourceID="Entorno" Height="50px" Width="100%" DataKeyNames="id" CellPadding="5" CellSpacing="10" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" Width="60%" />
                    <Fields>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                        <asp:BoundField DataField="name_envioronment" HeaderText="name_envioronment" SortExpression="name_envioronment" />
                        <asp:BoundField DataField="logo" HeaderText="logo" SortExpression="logo" />
                        <asp:BoundField DataField="url" HeaderText="url" SortExpression="url" />
                        <asp:BoundField DataField="number_module" HeaderText="number_module" SortExpression="number_module" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="Entorno" runat="server" ConnectionString="<%$ ConnectionStrings:Projectestasi %>" DeleteCommand="DELETE FROM [info_environment] WHERE [id] = @id" InsertCommand="INSERT INTO [info_environment] ([name_envioronment], [logo], [url], [number_module]) VALUES (@name_envioronment, @logo, @url, @number_module)" SelectCommand="SELECT [id], [name_envioronment], [logo], [url], [number_module] FROM [info_environment]" UpdateCommand="UPDATE [info_environment] SET [name_envioronment] = @name_envioronment, [logo] = @logo, [url] = @url, [number_module] = @number_module WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name_envioronment" Type="String" />
                        <asp:Parameter Name="logo" Type="String" />
                        <asp:Parameter Name="url" Type="String" />
                        <asp:Parameter Name="number_module" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name_envioronment" Type="String" />
                        <asp:Parameter Name="logo" Type="String" />
                        <asp:Parameter Name="url" Type="String" />
                        <asp:Parameter Name="number_module" Type="Int32" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="BDD" Height="50px" Width="100%" CellPadding="4" CellSpacing="10" ForeColor="#333333" GridLines="None" OnPageIndexChanging="DetailsView2_PageIndexChanging">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" Width="60%" />
                    <Fields>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                        <asp:BoundField DataField="ip_server" HeaderText="ip_server" SortExpression="ip_server" />
                        <asp:BoundField DataField="ip_database" HeaderText="ip_database" SortExpression="ip_database" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="BDD" runat="server" ConnectionString="<%$ ConnectionStrings:Projectestasi %>" SelectCommand="SELECT [id], [ip_server], [ip_database] FROM [info_db]"></asp:SqlDataSource>
                <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="Modulo" Height="50px" Width="100%" CellPadding="4" CellSpacing="10" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" Width="60%" />
                    <Fields>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                        <asp:BoundField DataField="module" HeaderText="module" SortExpression="module" />
                        <asp:BoundField DataField="name_database" HeaderText="name_database" SortExpression="name_database" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="Modulo" runat="server" ConnectionString="<%$ ConnectionStrings:Projectestasi %>" SelectCommand="SELECT * FROM [info_module]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="project" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT [logo], [name_envioronment], [url], [number_module] FROM [info_environment]"></asp:SqlDataSource>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    </asp:Content>
