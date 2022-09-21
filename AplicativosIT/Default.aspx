<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AplicativosIT._Default" %>

<%@ Register Assembly="DevExpress.Web.v22.1, Version=22.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function OnCardSelectionChanged(s, e) {
            s.GetSelectedFieldValues("name_environment;url;ip_server", GetSelectedFieldValuesCallback);
        }
        function GetSelectedFieldValuesCallback(values) {
                for (var i = 0; i < values.length; i++) {
                    let url = values[0][1];
                    window.open(url, "New Window", "width=1920, height=1080");
                    document.location.reload();
            };
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

            <dx:ASPxCardView ID="ASPxCardView1" runat="server" AutoGenerateColumns="False" DataSourceID="CardView1" KeyFieldName="id" EnableTheming="True" Theme="MetropolisBlue">
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
                    <dx:CardViewTextColumn FieldName="id" ReadOnly="True" Visible="False">
                    </dx:CardViewTextColumn>
                    <dx:CardViewTextColumn FieldName="name_environment" VisibleIndex="0" Caption=" ">
                    </dx:CardViewTextColumn>
                    <dx:CardViewTextColumn FieldName="url" VisibleIndex="2">
                        <PropertiesTextEdit>
                            <Style Font-Bold="False" Font-Italic="False">
                            </Style>
                        </PropertiesTextEdit>
                        <BatchEditModifiedCellStyle Font-Bold="False" Font-Italic="False" ForeColor="Black">
                        </BatchEditModifiedCellStyle>
                    </dx:CardViewTextColumn>
                    <dx:CardViewTextColumn FieldName="ip_server" VisibleIndex="3">
                    </dx:CardViewTextColumn>
                    <dx:CardViewTextColumn FieldName="ip_database" VisibleIndex="4">
                    </dx:CardViewTextColumn>
                    <dx:CardViewTextColumn FieldName="management_db" VisibleIndex="5">
                    </dx:CardViewTextColumn>
                    <dx:CardViewTextColumn FieldName="version_db" VisibleIndex="6">
                    </dx:CardViewTextColumn>
                    <dx:CardViewTextColumn FieldName="number_module" VisibleIndex="7">
                    </dx:CardViewTextColumn>
                    <dx:CardViewTextColumn FieldName="name_module" VisibleIndex="8">
                    </dx:CardViewTextColumn>
                    <dx:CardViewTextColumn FieldName="name_database" VisibleIndex="9">
                    </dx:CardViewTextColumn>
                    <dx:CardViewBinaryImageColumn FieldName="logo" VisibleIndex="1" Caption=" ">
                        <%--<PropertiesImage ImageHeight="150px" ImageWidth="150px">
                        </PropertiesImage>--%>
                        <PropertiesBinaryImage ImageHeight="175px" ImageWidth="200px">
                            <EditingSettings Enabled="true" UploadSettings-UploadValidationSettings-MaxFileSize="4194304" >
                            </EditingSettings>
                        </PropertiesBinaryImage>
                    </dx:CardViewBinaryImageColumn>
                </Columns>

                <EditFormLayoutProperties>
                    <Items>
                        <dx:CardViewCommandLayoutItem ColSpan="1" HorizontalAlign="Right">
                        </dx:CardViewCommandLayoutItem>
                        <dx:CardViewColumnLayoutItem Caption="name_environment" ColSpan="1" ColumnName="name_environment">
                        </dx:CardViewColumnLayoutItem>
                        <dx:CardViewColumnLayoutItem Caption="logo" ColSpan="1" ColumnName="logo">
                        </dx:CardViewColumnLayoutItem>
                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="url">
                        </dx:CardViewColumnLayoutItem>
                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="ip_server">
                        </dx:CardViewColumnLayoutItem>
                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="ip_database">
                        </dx:CardViewColumnLayoutItem>
                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="management_db">
                        </dx:CardViewColumnLayoutItem>
                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="version_db">
                        </dx:CardViewColumnLayoutItem>
                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="number_module">
                        </dx:CardViewColumnLayoutItem>
                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="name_module">
                        </dx:CardViewColumnLayoutItem>
                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="name_database">
                        </dx:CardViewColumnLayoutItem>
                        <dx:EditModeCommandLayoutItem ColSpan="1" HorizontalAlign="Right">
                        </dx:EditModeCommandLayoutItem>
                    </Items>
                </EditFormLayoutProperties>

                <CardLayoutProperties>
                    <Items>
                        <dx:CardViewCommandLayoutItem ColSpan="1" HorizontalAlign="Right" ShowEditButton="True" ShowDeleteButton="True" ShowNewButton="True">
                        </dx:CardViewCommandLayoutItem>
                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="name_environment">
                        </dx:CardViewColumnLayoutItem>
                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="logo">
                        </dx:CardViewColumnLayoutItem>
                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="url" Visible="False">
                            <Paddings Padding="2px" />
                            <CaptionStyle ForeColor="White">
                            </CaptionStyle>
                            <ParentContainerStyle ForeColor="White">
                            </ParentContainerStyle>
                        </dx:CardViewColumnLayoutItem>
                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="ip_server" Visible="False">
                            <Paddings Padding="2px" />
                            <CaptionStyle ForeColor="White">
                            </CaptionStyle>
                            <ParentContainerStyle ForeColor="White">
                            </ParentContainerStyle>
                        </dx:CardViewColumnLayoutItem>
                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="ip_database" Visible="False">
                            <CaptionStyle ForeColor="White">
                            </CaptionStyle>
                            <ParentContainerStyle ForeColor="White">
                            </ParentContainerStyle>
                        </dx:CardViewColumnLayoutItem>
                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="management_db" Visible="False">
                            <CaptionStyle ForeColor="White">
                            </CaptionStyle>
                            <ParentContainerStyle ForeColor="White">
                            </ParentContainerStyle>
                        </dx:CardViewColumnLayoutItem>
                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="version_db" Visible="False">
                            <CaptionStyle ForeColor="White">
                            </CaptionStyle>
                            <ParentContainerStyle ForeColor="White">
                            </ParentContainerStyle>
                        </dx:CardViewColumnLayoutItem>
                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="number_module" Visible="False">
                            <CaptionStyle ForeColor="White">
                            </CaptionStyle>
                            <ParentContainerStyle ForeColor="White">
                            </ParentContainerStyle>
                        </dx:CardViewColumnLayoutItem>
                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="name_module" Visible="False">
                            <CaptionStyle ForeColor="White">
                            </CaptionStyle>
                            <ParentContainerStyle ForeColor="White">
                            </ParentContainerStyle>
                        </dx:CardViewColumnLayoutItem>
                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="name_database" Visible="False">
                            <CaptionStyle ForeColor="White">
                            </CaptionStyle>
                            <ParentContainerStyle ForeColor="White">
                            </ParentContainerStyle>
                        </dx:CardViewColumnLayoutItem>
                        <dx:EditModeCommandLayoutItem ColSpan="1" HorizontalAlign="Right" Visible="False">
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
            <asp:SqlDataSource ID="CardView1" runat="server" ConnectionString="<%$ ConnectionStrings:Proyecto2.2 %>" SelectCommand="SELECT * FROM [info_environment]" DeleteCommand="DELETE FROM [info_environment] WHERE [id] = @id" InsertCommand="INSERT INTO [info_environment] ([name_environment], [logo], [url], [ip_server], [ip_database], [management_db], [version_db], [number_module], [name_module], [name_database]) VALUES (@name_environment, @logo, @url, @ip_server, @ip_database, @management_db, @version_db, @number_module, @name_module, @name_database)" UpdateCommand="UPDATE [info_environment] SET [name_environment] = @name_environment, [logo] = @logo, [url] = @url, [ip_server] = @ip_server, [ip_database] = @ip_database, [management_db] = @management_db, [version_db] = @version_db, [number_module] = @number_module, [name_module] = @name_module, [name_database] = @name_database WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name_environment" Type="String" />
                    <asp:Parameter Name="logo" DbType="Binary" />
                    <asp:Parameter Name="url" Type="String" />
                    <asp:Parameter Name="ip_server" Type="String" />
                    <asp:Parameter Name="ip_database" Type="String" />
                    <asp:Parameter Name="management_db" Type="String" />
                    <asp:Parameter Name="version_db" Type="String" />
                    <asp:Parameter Name="number_module" Type="Int32" />
                    <asp:Parameter Name="name_module" Type="String" />
                    <asp:Parameter Name="name_database" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name_environment" Type="String" />
                    <asp:Parameter Name="logo" DbType="Binary" />
                    <asp:Parameter Name="url" Type="String" />
                    <asp:Parameter Name="ip_server" Type="String" />
                    <asp:Parameter Name="ip_database" Type="String" />
                    <asp:Parameter Name="management_db" Type="String" />
                    <asp:Parameter Name="version_db" Type="String" />
                    <asp:Parameter Name="number_module" Type="Int32" />
                    <asp:Parameter Name="name_module" Type="String" />
                    <asp:Parameter Name="name_database" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
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
                        <asp:BoundField DataField="ip_server" HeaderText="ip_server" SortExpression="ip_server" />
                        <asp:BoundField DataField="ip_database" HeaderText="ip_database" SortExpression="ip_database" />
                        <asp:BoundField DataField="gestor" HeaderText="gestor" SortExpression="gestor" />
                        <asp:BoundField DataField="version" HeaderText="version" SortExpression="version" />
                        <asp:BoundField DataField="number_module" HeaderText="number_module" SortExpression="number_module" />
                        <asp:BoundField DataField="module" HeaderText="module" SortExpression="module" />
                        <asp:BoundField DataField="name_database" HeaderText="name_database" SortExpression="name_database" />
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="Entorno" runat="server" ConnectionString="<%$ ConnectionStrings:proyectoMio %>" DeleteCommand="DELETE FROM [info_environment] WHERE [id] = @id" InsertCommand="INSERT INTO [info_environment] ([name_envioronment], [logo], [url], [number_module]) VALUES (@name_envioronment, @logo, @url, @number_module)" SelectCommand="SELECT info_db.ip_server, info_db.ip_database, catalogue2.value_catalogue AS gestor, catalogue3.value_catalogue AS version, info_environment.number_module, info_module.module, info_module.name_database, info_environment.id FROM info_db INNER JOIN catalogue AS catalogue2 ON catalogue2.id = info_db.fk_manager_db INNER JOIN catalogue AS catalogue3 ON catalogue3.id = info_db.fk_version_db INNER JOIN info_environment ON info_environment.fk_info_db = info_db.id INNER JOIN info_module
ON info_environment.fk_info_module = info_module.id" UpdateCommand="UPDATE [info_environment] SET [name_envioronment] = @name_envioronment, [logo] = @logo, [url] = @url, [number_module] = @number_module WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name_envioronment" Type="String" />
                        <asp:Parameter Name="logo" dbtype="Binary" />
                        <asp:Parameter Name="url" Type="String" />
                        <asp:Parameter Name="number_module" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name_envioronment" Type="String" />
                        <asp:Parameter Name="logo" dbtype="Binary" />
                        <asp:Parameter Name="url" Type="String" />
                        <asp:Parameter Name="number_module" Type="Int32" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    </asp:Content>
