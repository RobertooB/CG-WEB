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
    <div class="title-container"  style="
        margin-bottom: 20px;
        padding: 15px; background-image:
  linear-gradient( to bottom, hsl(0, 0%, 100%) 0%, hsl(224.9, 68.8%, 98.72%) 7.5%, hsl(224.77, 69.09%, 97.16%) 14.6%, hsl(224.61, 69.44%, 95.33%) 21.3%, hsl(224.42, 69.84%, 93.24%) 27.7%, hsl(224.18, 70.3%, 90.9%) 33.9%, hsl(223.9, 70.83%, 88.32%) 40%, hsl(223.56, 71.41%, 85.51%) 45.9%, hsl(223.14, 72.07%, 82.46%) 51.9%, hsl(222.64, 72.81%, 79.17%) 57.9%, hsl(222.01, 73.63%, 75.62%) 64.1%, hsl(221.22, 74.55%, 71.78%) 70.5%, hsl(220.19, 75.61%, 67.59%) 77.2%, hsl(218.78, 76.85%, 62.87%) 84.3%, hsl(216.62, 78.44%, 57.18%) 91.9%, hsl(210, 100%, 45.1%) 100% )">
        <h1 class="title" style="text-align: center;">CG/Web</h1>
<svg class="waves" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#ffffff" fill-opacity="1" d="M0,288L48,272C96,256,192,224,288,197.3C384,171,480,149,576,165.3C672,181,768,235,864,250.7C960,267,1056,245,1152,250.7C1248,256,1344,288,1392,304L1440,320L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path></svg>
        <p class="lead" style="text-align:center;">Menú de ambientes de desarrollo CG/Web</p>

    </div>

    <div class="row">
        <div class="col-md-4">
            <dx:ASPxCardView CssClass="card-view" ID="ASPxCardView1" runat="server" AutoGenerateColumns="False" DataSourceID="CardView1" KeyFieldName="id" EnableTheming="True" Theme="MetropolisBlue" Width="864px">
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
                    <dx:CardViewTextColumn FieldName="id" ReadOnly="True" Visible="False" ShowInCustomizationForm="True">
                    </dx:CardViewTextColumn>
                    <dx:CardViewTextColumn FieldName="name_environment" VisibleIndex="0" Caption=" " ShowInCustomizationForm="True">
                    </dx:CardViewTextColumn>
                    <dx:CardViewTextColumn FieldName="url" VisibleIndex="2" ShowInCustomizationForm="True">
                        <PropertiesTextEdit>
                            <ValidationSettings>
                                <RegularExpression ErrorText="La expresion debe de ser de tipo URL" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?" />
                            </ValidationSettings>
                        </PropertiesTextEdit>
                    </dx:CardViewTextColumn>
                    <dx:CardViewTextColumn FieldName="ip_server" VisibleIndex="3" ShowInCustomizationForm="True">
                        <PropertiesTextEdit>
                            <ValidationSettings>
                                <RegularExpression ErrorText="La IP debe de ser 255.255.255.255 u otro formato valido." ValidationExpression="^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$" />
                            </ValidationSettings>
                        </PropertiesTextEdit>
                    </dx:CardViewTextColumn>
                    <dx:CardViewTextColumn FieldName="ip_database" VisibleIndex="4" ShowInCustomizationForm="True">
                        <PropertiesTextEdit>
                            <ValidationSettings>
                                <RegularExpression ErrorText="La IP debe de ser 255.255.255.255 u otro formato valido." ValidationExpression="^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$" />
                            </ValidationSettings>
                        </PropertiesTextEdit>
                    </dx:CardViewTextColumn>
                    <dx:CardViewTextColumn FieldName="management_db" VisibleIndex="5" ShowInCustomizationForm="True">
                    </dx:CardViewTextColumn>
                    <dx:CardViewTextColumn FieldName="version_db" VisibleIndex="6" ShowInCustomizationForm="True">
                    </dx:CardViewTextColumn>
                    <dx:CardViewTextColumn FieldName="number_module" VisibleIndex="7" ShowInCustomizationForm="True">
                        <PropertiesTextEdit>
                            <ValidationSettings>
                                <RegularExpression ErrorText="Solo se aceptan numeros" ValidationExpression="\d+" />
                            </ValidationSettings>
                        </PropertiesTextEdit>
                    </dx:CardViewTextColumn>
                    <dx:CardViewTextColumn FieldName="name_module" VisibleIndex="8" ShowInCustomizationForm="True">
                    </dx:CardViewTextColumn>
                    <dx:CardViewTextColumn FieldName="name_database" VisibleIndex="9" ShowInCustomizationForm="True">
                    </dx:CardViewTextColumn>
                    <dx:CardViewBinaryImageColumn FieldName="logo" VisibleIndex="1" Caption=" ">
                        <PropertiesBinaryImage ImageHeight="250px" ImageWidth="250px">
                            <EditingSettings Enabled="True">
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
            <asp:SqlDataSource ID="CardView1" runat="server" ConnectionString="<%$ ConnectionStrings:proyecto_ahora_si %>" SelectCommand="SELECT * FROM [info_environment]" DeleteCommand="DELETE FROM [info_environment] WHERE [id] = @id" InsertCommand="INSERT INTO [info_environment] ([name_environment], [logo], [url], [ip_server], [ip_database], [management_db], [version_db], [number_module], [name_module], [name_database]) VALUES (@name_environment, @logo, @url, @ip_server, @ip_database, @management_db, @version_db, @number_module, @name_module, @name_database)" UpdateCommand="UPDATE [info_environment] SET [name_environment] = @name_environment, [logo] = @logo, [url] = @url, [ip_server] = @ip_server, [ip_database] = @ip_database, [management_db] = @management_db, [version_db] = @version_db, [number_module] = @number_module, [name_module] = @name_module, [name_database] = @name_database WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name_environment" Type="String" />
                    <asp:Parameter Name="logo" DbType="Binary"/>
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
                    <asp:Parameter Name="logo" DbType="Binary"/>
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
    </asp:Content>
