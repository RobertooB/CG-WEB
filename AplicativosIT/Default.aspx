<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AplicativosIT._Default" %>

<%@ Register assembly="DevExpress.Web.v22.1, Version=22.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function OnCardSelectionChanged() {
            window.open("https://www.w3schools.com");
        }
    </script>
    <div class="jumbotron">
        <h1>G/Web</h1>
        <p class="lead">Menú de ambientes de desarrollo CG/Web</p>
    </div>
    <div class="row">
        <div class="col-md-4">

                <dx:ASPxCardView ID="ASPxCardView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="Id">
                    <ClientSideEvents SelectionChanged="OnCardSelectionChanged" />
                    <SettingsEditing Mode="PopupEditForm">
                        <BatchEditSettings EditMode="Card" />
                    </SettingsEditing>
                    <SettingsBehavior AllowFocusedCard="True" AllowSelectByCardClick="true" />
                    <SettingsPopup>
                        <EditForm>
                            <SettingsAdaptivity Mode="OnWindowInnerWidth" SwitchAtWindowInnerWidth="768" />
                        </EditForm>

<FilterControl AutoUpdatePosition="False"></FilterControl>
                    </SettingsPopup>
                    <SettingsExport ExportSelectedCardsOnly="False"></SettingsExport>
                    <Columns>
                        <dx:CardViewTextColumn FieldName="Id" ReadOnly="True" Visible="False">
                        </dx:CardViewTextColumn>
                        <dx:CardViewImageColumn FieldName="Password" VisibleIndex="0">
                            <PropertiesImage ImageWidth="150px" ImageHeight="150px" />
                        </dx:CardViewImageColumn>
                        <dx:CardViewTextColumn FieldName="Name" VisibleIndex="1">   
                        </dx:CardViewTextColumn>
                    </Columns>

                    <CardLayoutProperties>
                        <Items>
                            <dx:CardViewCommandLayoutItem ColSpan="1" HorizontalAlign="Right" ShowDeleteButton="True" ShowEditButton="True" ShowNewButton="True">
                            </dx:CardViewCommandLayoutItem>
                            <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="Password">
                            </dx:CardViewColumnLayoutItem>
                            <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="Name">
                            </dx:CardViewColumnLayoutItem>
                            <dx:EditModeCommandLayoutItem ColSpan="1" HorizontalAlign="Right">
                            </dx:EditModeCommandLayoutItem>
                        </Items>
                    </CardLayoutProperties>

                    <StylesExport>
                        <Card BorderSize="1" BorderSides="All"></Card>
                        <Group BorderSize="1" BorderSides="All"></Group>
                        <TabbedGroup BorderSize="1" BorderSides="All"></TabbedGroup>
                        <Tab BorderSize="1"></Tab>
                    </StylesExport>
                </dx:ASPxCardView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:documentsConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Users] ([Password], [Name]) VALUES (@Password, @Name)" SelectCommand="SELECT [Id], [Password], [Name] FROM [Users]" UpdateCommand="UPDATE [Users] SET [Password] = @Password, [Name] = @Name WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int64" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Id" Type="Int64" />
                    </UpdateParameters>
                </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
