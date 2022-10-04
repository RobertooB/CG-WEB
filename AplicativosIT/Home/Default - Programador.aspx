﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default - Programador.aspx.cs" Inherits="AplicativosIT._Default__" %>

<%@ Register Assembly="DevExpress.Web.v22.1, Version=22.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .botonLogin {
            margin-right: 90px;
            margin-top: -110px;
            background: transparent;
        }
    </style>
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
        function ShowLogOn() {
            window.open("LogOn.aspx");
        }
        function ShowUsersWindow() {
            pcUsuarios.Show();
        }
        function onFileUploadComplete(s, e) {
            if (e.callbackData) {
                var fileData = e.callbackData.split('|');
                var fileName = fileData[0],
                    fileUrl = fileData[1],
                    fileSize = fileData[2];
                DXUploadedFilesContainer.AddFile(fileName, fileUrl, fileSize);
            }
        }
        function ShowInfo() {
            pcInfo.Show();
        }
    </script>
    <link href="./Styles/DefaultStyles.css" rel="stylesheet" type="text/css" />
        <div style="position: relative">
            <div style="position: absolute; z-index: 2; width: 100%; height: 100%">
                <h1 class="title" style="text-align: center; font-size: 45px; color: midnightblue">CG/WEB</h1>
                <p class="lead" style="text-align: center; font-size: 30px; color:black;">Sistema Administrativo Financiero</p>
                <dx:ASPxButton ID="Button1" runat="server" Image-IconID="xaf_filtereditor_user_svg_dark_32x32" AutoPostBack="False" UseSubmitBehavior="False" CssClass="botonLogin">
                    <ClientSideEvents Click="function(s, e) { ShowLogOn(); }" />
                    <Border BorderColor="Transparent"></Border>
                </dx:ASPxButton>
            </div>
                <div style="background-image: linear-gradient(90deg, rgba(27,202,237,1) 28%, rgba(13,175,179,1) 63%, rgba(93,69,231,1) 100%);">
                    <div class="title-container"  style="display: grid; grid-template-columns: repeat(3, 1fr); margin-bottom: 11px; padding: 15px;
                        opacity:0.4; background-image: url(https://img.freepik.com/foto-gratis/empresaria-usando-tableta-analizar-concepto-exito-estadisticas-estrategia-financiera-empresa-planificacion-futuro-sala-oficina_74952-1410.jpg?w=2000);">
                    </div>
                </div>
            <svg class="waves" style="position: absolute" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
                   <path fill="#ffffff" fill-opacity="1" d="M0,256L48,234.7C96,213,192,171,288,176C384,181,480,235,576,261.3C672,288,768,288,864,261.3C960,235,1056,181,1152,160C1248,139,1344,149,1392,154.7L1440,160L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path>
                </svg>
        </div>
    <dx:ASPxPopupControl ID="pcUsuarios" runat="server" Width="454px" CloseAction="CloseButton" CloseOnEscape="True" Modal="True"
        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" ClientInstanceName="pcUsuarios"
        HeaderText="Usuarios" AllowDragging="True" PopupAnimationType="None" EnableViewState="False" AutoUpdatePosition="True" Theme="MetropolisBlue">
        <ClientSideEvents PopUp="function(s, e) { ASPxClientEdit.ClearGroup('entryGroup'); tbLogin.Focus(); }" />
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <dx:ASPxPanel ID="Panel" runat="server" DefaultButton="btOK" Width="464px">
                    <PanelCollection>
                        <dx:PanelContent runat="server">
                            <dx:ASPxCardView ID="CardView2" runat="server" AutoGenerateColumns="False" DataSourceID="Usuarios" KeyFieldName="id" Width="463px" Theme="MetropolisBlue" Font-Bold="True">
                                <SettingsPager SettingsTableLayout-RowsPerPage="1" SettingsTableLayout-ColumnCount="1" >
<SettingsTableLayout ColumnCount="1" RowsPerPage="1"></SettingsTableLayout>
                                    <NextPageButton>
                                        <Image IconID="arrows_next_svg_16x16">
                                        </Image>
                                    </NextPageButton>
                                    <PrevPageButton>
                                        <Image IconID="arrows_prev_svg_16x16">
                                        </Image>
                                    </PrevPageButton>
                                </SettingsPager>
                                <SettingsPopup>
                                    <FilterControl AutoUpdatePosition="False">
                                    </FilterControl>
                                </SettingsPopup>
                                <SettingsExport ExportSelectedCardsOnly="False">
                                </SettingsExport>
                                <SettingsCommandButton>
                                    <EditButton Text=" ">
                                        <Image IconID="actions_edit_16x16devav"></Image>
                                    </EditButton>
                                    <DeleteButton Text=" ">
                                        <Image IconID="actions_cancel_16x16"></Image>
                                    </DeleteButton>
                                    <NewButton Text=" ">
                                        <Image IconID="actions_add_16x16"></Image>
                                    </NewButton>
                                    <UpdateButton Text="Actualizar" RenderMode="Button">
                                        <Styles>
                                            <Style BackColor="#0066CC" Cursor="pointer" ForeColor="White">
                                                <HoverStyle BackColor="#0000CC" ForeColor="White">
                                                <Border BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
                                                </HoverStyle>
                                                <Paddings Padding="5px" />
                                                <Border BorderColor="Gray" BorderStyle="Solid" BorderWidth="2px" />
                                            </Style>
                                        </Styles>
                                    </UpdateButton>
                                    <CancelButton Text="Cancelar" RenderMode="Button">
                                        <Styles>
                                            <Style BackColor="#0066CC" Cursor="pointer" ForeColor="White">
                                                <HoverStyle BackColor="#0000CC" ForeColor="White">
                                                <Border BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
                                                </HoverStyle>
                                                <Paddings Padding="5px" />
                                                <Border BorderColor="Gray" BorderStyle="Solid" BorderWidth="2px" />
                                            </Style>
                                        </Styles>
                                    </CancelButton>

<EndlessPagingShowMoreCardsButton>
<Image IconID="arrows_next_svg_16x16"></Image>
</EndlessPagingShowMoreCardsButton>
                                </SettingsCommandButton>
                                <Columns>
                                    <dx:CardViewTextColumn FieldName="id" ReadOnly="True" ShowInCustomizationForm="True" Visible="False">
                                    </dx:CardViewTextColumn>
                                    <dx:CardViewTextColumn FieldName="name_user" ShowInCustomizationForm="True" VisibleIndex="0">
                                    </dx:CardViewTextColumn>
                                    <dx:CardViewTextColumn FieldName="password" ShowInCustomizationForm="True" VisibleIndex="1">
                                        <PropertiesTextEdit Password="True">
                                        </PropertiesTextEdit>
                                    </dx:CardViewTextColumn>
                                    <dx:CardViewTextColumn FieldName="name" ShowInCustomizationForm="True" VisibleIndex="2">
                                    </dx:CardViewTextColumn>
                                    <dx:CardViewTextColumn FieldName="lastname" ShowInCustomizationForm="True" VisibleIndex="3">
                                    </dx:CardViewTextColumn>
                                    <dx:CardViewComboBoxColumn Caption="catalogue" FieldName="id_catalogue" ShowInCustomizationForm="True" VisibleIndex="4">
                                        <PropertiesComboBox DataSourceID="ComboBox1" TextField="value_catalogue" ValueField="id" ValueType="System.Int32">
                                        </PropertiesComboBox>
                                    </dx:CardViewComboBoxColumn>
                                </Columns>
                                <CardLayoutProperties>
                                    <Items>
                                        <dx:CardViewCommandLayoutItem ColSpan="1" HorizontalAlign="Right" ShowDeleteButton="True" ShowEditButton="True" ShowNewButton="True">
                                        </dx:CardViewCommandLayoutItem>
                                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="name_user">
                                        </dx:CardViewColumnLayoutItem>
                                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="password">
                                        </dx:CardViewColumnLayoutItem>
                                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="name">
                                        </dx:CardViewColumnLayoutItem>
                                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="lastname">
                                        </dx:CardViewColumnLayoutItem>
                                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="catalogue">
                                        </dx:CardViewColumnLayoutItem>
                                        <dx:EditModeCommandLayoutItem ColSpan="1" HorizontalAlign="Right">
                                        </dx:EditModeCommandLayoutItem>
                                    </Items>
                                </CardLayoutProperties>
                                <StylesExport>
                                    <Card BorderSides="All" BorderSize="1">
                                    </Card>
                                    <Group BorderSides="All" BorderSize="1">
                                    </Group>
                                    <TabbedGroup BorderSides="All" BorderSize="1">
                                    </TabbedGroup>
                                    <Tab BorderSize="1">
                                    </Tab>
                                </StylesExport>

                                <StylesPager>
                                    <Button Cursor="pointer">
                                    </Button>
                                </StylesPager>

<Border BorderColor="Transparent"></Border>
                            </dx:ASPxCardView>
                            <asp:SqlDataSource ID="Usuarios" runat="server" ConnectionString="<%$ ConnectionStrings:Proyecto X %>" DeleteCommand="DELETE FROM [users] WHERE [id] = @id" InsertCommand="INSERT INTO [users] ([name_user], [password], [name], [lastname], [id_catalogue]) VALUES (@name_user, @password, @name, @lastname, @id_catalogue)" SelectCommand="SELECT * FROM [users]" UpdateCommand="UPDATE [users] SET [name_user] = @name_user, [password] = @password, [name] = @name, [lastname] = @lastname, [id_catalogue] = @id_catalogue WHERE [id] = @id">
                                <DeleteParameters>
                                    <asp:Parameter Name="id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="name_user" Type="String" />
                                    <asp:Parameter Name="password" Type="String" />
                                    <asp:Parameter Name="name" Type="String" />
                                    <asp:Parameter Name="lastname" Type="String" />
                                    <asp:Parameter Name="id_catalogue" Type="Int32" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="name_user" Type="String" />
                                    <asp:Parameter Name="password" Type="String" />
                                    <asp:Parameter Name="name" Type="String" />
                                    <asp:Parameter Name="lastname" Type="String" />
                                    <asp:Parameter Name="id_catalogue" Type="Int32" />
                                    <asp:Parameter Name="id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </dx:PanelContent>
                    </PanelCollection>
                </dx:ASPxPanel>
            </dx:PopupControlContentControl>
        </ContentCollection>
        <CloseButtonStyle CssClass="btnclose23">
            <HoverStyle BackColor="Red" CssClass="btnclose" ForeColor="Yellow">
            </HoverStyle>
        </CloseButtonStyle>
        <ContentStyle>
            <Paddings PaddingBottom="5px" />
        </ContentStyle>
        <Border BorderColor="#0066FF" BorderStyle="Solid" BorderWidth="3px" />
    </dx:ASPxPopupControl>
    
    <dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" Width="577px" CloseAction="CloseButton" CloseOnEscape="True" Modal="True"
        PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" ClientInstanceName="pcInfo"
        HeaderText="Información" AllowDragging="True" PopupAnimationType="None" EnableViewState="False" AutoUpdatePosition="True" Theme="MetropolisBlue">
        <ClientSideEvents PopUp="function(s, e) { ASPxClientEdit.ClearGroup('entryGroup'); }" />
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <dx:ASPxPanel ID="ASPxPanel1" runat="server" DefaultButton="btOK" Width="489px">
                    <PanelCollection>
                        <dx:PanelContent runat="server">
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Proyecto X %>" SelectCommand="SELECT [id], [ip_server], [ip_database], [management_db], [version_db], [number_module] FROM [info_environment]" DeleteCommand="DELETE FROM [info_environment] WHERE [id] = @id" InsertCommand="INSERT INTO [info_environment] ([ip_server], [ip_database], [management_db], [version_db], [number_module]) VALUES (@ip_server, @ip_database, @management_db, @version_db, @number_module)" UpdateCommand="UPDATE [info_environment] SET [ip_server] = @ip_server, [ip_database] = @ip_database, [management_db] = @management_db, [version_db] = @version_db, [number_module] = @number_module WHERE [id] = @id">
                                <DeleteParameters>
                                    <asp:Parameter Name="id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="ip_server" Type="String" />
                                    <asp:Parameter Name="ip_database" Type="String" />
                                    <asp:Parameter Name="management_db" Type="Int32" />
                                    <asp:Parameter Name="version_db" Type="Int32" />
                                    <asp:Parameter Name="number_module" Type="Int32" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="ip_server" Type="String" />
                                    <asp:Parameter Name="ip_database" Type="String" />
                                    <asp:Parameter Name="management_db" Type="Int32" />
                                    <asp:Parameter Name="version_db" Type="Int32" />
                                    <asp:Parameter Name="number_module" Type="Int32" />
                                    <asp:Parameter Name="id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>

                            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="544px" KeyFieldName="id" Theme="MetropolisBlue" Images-DetailCollapsedButton-IconID="iconbuilder_actions_arrow3right_svg_gray_16x16" Images-DetailExpandedButton-IconID="iconbuilder_actions_arrow3up_svg_gray_16x16">
                                <SettingsPager>
                                    <FirstPageButton>
                                        <Image IconID="arrows_prev_svg_16x16">
                                        </Image>
                                    </FirstPageButton>
                                    <LastPageButton>
                                        <Image IconID="arrows_prev_svg_16x16">
                                        </Image>
                                    </LastPageButton>
                                    <NextPageButton>
                                        <Image IconID="arrows_next_svg_16x16">
                                        </Image>
                                    </NextPageButton>
                                    <PrevPageButton>
                                        <Image IconID="arrows_prev_svg_16x16">
                                        </Image>
                                    </PrevPageButton>
                                </SettingsPager>
                                <SettingsPopup>
                                    <FilterControl AutoUpdatePosition="False">
                                    </FilterControl>
                                </SettingsPopup>
                                <SettingsAdaptivity>
                                    <AdaptiveDetailLayoutProperties>
                                        <Items>
                                            <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="id">
                                            </dx:GridViewColumnLayoutItem>
                                            <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="ip_server">
                                            </dx:GridViewColumnLayoutItem>
                                            <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="ip_database">
                                            </dx:GridViewColumnLayoutItem>
                                            <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="management_db">
                                            </dx:GridViewColumnLayoutItem>
                                            <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="version_db">
                                            </dx:GridViewColumnLayoutItem>
                                            <dx:GridViewColumnLayoutItem ColSpan="1" ColumnName="number_module">
                                            </dx:GridViewColumnLayoutItem>
                                        </Items>
                                    </AdaptiveDetailLayoutProperties>
                                </SettingsAdaptivity>
                                <Templates>
                                    <DetailRow>
                                        <dx:ASPxGridView ID="detailGrid" runat="server" DataSourceID="SqlDataSource3" KeyFieldName="id;fk_environment"
                                            Width="100%" EnablePagingGestures="True" OnBeforePerformDataSelect="detailGrid_DataSelect">
                                            <Columns>
                                                <dx:GridViewDataTextColumn FieldName="name_module" ShowInCustomizationForm="True" VisibleIndex="0">
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="name_database" ShowInCustomizationForm="True" VisibleIndex="1">
                                                </dx:GridViewDataTextColumn>
                                            </Columns>
                                            <Settings ShowFooter="True" />
                                            <SettingsPager EnableAdaptivity="true" />
                                            <Styles Header-Wrap="True"/>
                                        </dx:ASPxGridView>
                                    </DetailRow>
                                </Templates>
                                <SettingsDetail ShowDetailRow="true" AllowOnlyOneMasterRowExpanded="true"/>
                                <Columns>
                                    <dx:GridViewDataTextColumn FieldName="id" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="0">
                                        <EditFormSettings Visible="False" />
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="ip_server" ShowInCustomizationForm="True" VisibleIndex="1">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="ip_database" ShowInCustomizationForm="True" VisibleIndex="2">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="management_db" ShowInCustomizationForm="True" VisibleIndex="3">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="version_db" ShowInCustomizationForm="True" VisibleIndex="4">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="number_module" ShowInCustomizationForm="True" VisibleIndex="5">
                                    </dx:GridViewDataTextColumn>
                                </Columns>
                                <Styles>
                                    <Table>
                                        <Border BorderColor="Gray" BorderStyle="Solid" BorderWidth="2px" />
                                    </Table>
                                    <Header BackColor="#0066FF" ForeColor="White">
                                    </Header>
                                </Styles>

<Images>
<DetailCollapsedButton IconID="iconbuilder_actions_arrow3right_svg_gray_16x16"></DetailCollapsedButton>

<DetailExpandedButton IconID="iconbuilder_actions_arrow3down_svg_dark_16x16"></DetailExpandedButton>
</Images>

                                <Border BorderStyle="None" />
                            </dx:ASPxGridView>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Proyecto X %>" DeleteCommand="DELETE FROM [module] WHERE [id] = @id" InsertCommand="INSERT INTO [module] ([name_module], [name_database], [fk_environment]) VALUES (@name_module, @name_database, @fk_environment)" SelectCommand="SELECT * FROM [module]" UpdateCommand="UPDATE [module] SET [name_module] = @name_module, [name_database] = @name_database, [fk_environment] = @fk_environment WHERE [id] = @id">
                                <DeleteParameters>
                                    <asp:Parameter Name="id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="name_module" Type="String" />
                                    <asp:Parameter Name="name_database" Type="String" />
                                    <asp:Parameter Name="fk_environment" Type="Int32" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="name_module" Type="String" />
                                    <asp:Parameter Name="name_database" Type="String" />
                                    <asp:Parameter Name="fk_environment" Type="Int32" />
                                    <asp:Parameter Name="id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <br />
                        </dx:PanelContent>
                    </PanelCollection>
                </dx:ASPxPanel>
            </dx:PopupControlContentControl>
        </ContentCollection>
        <CloseButtonStyle>
            <HoverStyle BackColor="Red" ForeColor="Yellow">
            </HoverStyle>
        </CloseButtonStyle>
        <ContentStyle>
            <Paddings PaddingBottom="5px" />
        </ContentStyle>
        <Border BorderColor="#0066FF" BorderStyle="Solid" BorderWidth="3px" />
    </dx:ASPxPopupControl>

    <div class="row">
        <div class="col-md-4">
            <dx:ASPxCardView CssClass="card-view" ID="CardView" runat="server" AutoGenerateColumns="False" DataSourceID="CardView1" KeyFieldName="id" EnableTheming="True" Width="864px" Border-BorderColor="Transparent" Theme="MetropolisBlue">
                <ClientSideEvents CardClick="OnCardSelectionChanged" CustomButtonClick="function(s, e) { ShowInfo(); }"/>
                 <SettingsPager>
                     <FirstPageButton>
                         <Image IconID="arrows_prev_svg_16x16">
                         </Image>
                     </FirstPageButton>
                     <LastPageButton>
                         <Image IconID="arrows_prev_svg_16x16">
                         </Image>
                     </LastPageButton>
                     <NextPageButton>
                         <Image IconID="arrows_next_svg_16x16">
                         </Image>
                     </NextPageButton>
                     <PrevPageButton>
                         <Image IconID="arrows_prev_svg_16x16">
                         </Image>
                     </PrevPageButton>
                </SettingsPager>
                 <SettingsEditing Mode="PopupEditForm">
                    <BatchEditSettings EditMode="Card" />
                </SettingsEditing>
                 <SettingsBehavior AllowFocusedCard="True" AllowSelectByCardClick="true" />
                <SettingsPopup>
                    <FilterControl AutoUpdatePosition="False"></FilterControl>
                </SettingsPopup>
                <SettingsCommandButton>
                    <EditButton Text=" ">
                        <Image IconID="actions_edit_16x16devav"></Image>
                    </EditButton>
                    <DeleteButton Text=" ">
                        <Image IconID="actions_cancel_16x16"></Image>
                    </DeleteButton>
                    <NewButton Text=" ">
                        <Image IconID="actions_add_16x16"></Image>
                    </NewButton>
                    <UpdateButton Text="Actualizar" RenderMode="Button">
                        <Styles>
                            <Style BackColor="#0066CC" Cursor="pointer" ForeColor="White">
                                 <HoverStyle BackColor="#0000CC" ForeColor="White">
                                 <Border BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
                                 </HoverStyle>
                                 <Paddings Padding="5px" />
                                 <Border BorderColor="Gray" BorderStyle="Solid" BorderWidth="2px" />
                            </Style>
                        </Styles>
                    </UpdateButton>
                    <CancelButton Text="Cancelar" RenderMode="Button">
                        <Styles>
                            <Style BackColor="#0066CC" Cursor="pointer" ForeColor="White">
                                 <HoverStyle BackColor="#0000CC" ForeColor="White">
                                 <Border BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
                                 </HoverStyle>
                                 <Paddings Padding="5px" />
                                 <Border BorderColor="Gray" BorderStyle="Solid" BorderWidth="2px" />
                            </Style>
                        </Styles>
                     </CancelButton>
                </SettingsCommandButton>

                <SettingsExport ExportSelectedCardsOnly="False"></SettingsExport>

                <SettingsLoadingPanel Text="Cargando" />

                <Columns>
                    <dx:CardViewTextColumn FieldName="id" ReadOnly="True" Visible="False">
                    </dx:CardViewTextColumn>
                    <dx:CardViewTextColumn FieldName="name_environment" VisibleIndex="0" Caption=" ">
                    </dx:CardViewTextColumn>
                    <dx:CardViewTextColumn FieldName="url" VisibleIndex="2">
                        <PropertiesTextEdit Width="100%">
                            <ValidationSettings>
                                <RegularExpression ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?" />
                            </ValidationSettings>
                        </PropertiesTextEdit>
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
                    <dx:CardViewBinaryImageColumn Caption=" " FieldName="logo" VisibleIndex="1">
                        <PropertiesBinaryImage ImageHeight="175px" ImageWidth="200px">
                            <EditingSettings Enabled="True">
                            </EditingSettings>
                        </PropertiesBinaryImage>
                    </dx:CardViewBinaryImageColumn>
                </Columns>

                <EditFormLayoutProperties>
                    <Items>
                        <dx:CardViewCommandLayoutItem ColSpan="1" HorizontalAlign="Right">
                        </dx:CardViewCommandLayoutItem>
                        <dx:CardViewColumnLayoutItem Caption="name_environment" ColSpan="1" ColumnName=" ">
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
                        <dx:EditModeCommandLayoutItem ColSpan="1" HorizontalAlign="Right">
                        </dx:EditModeCommandLayoutItem>
                    </Items>
                </EditFormLayoutProperties>

                <CardLayoutProperties>
                    <Items>
                        <dx:CardViewCommandLayoutItem ColSpan="1" HorizontalAlign="Right" ShowDeleteButton="True" ShowNewButton="True" ShowEditButton="True">
                        </dx:CardViewCommandLayoutItem>
                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="name_environment" HorizontalAlign="Center">
                        </dx:CardViewColumnLayoutItem>
                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="logo">
                        </dx:CardViewColumnLayoutItem>
                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="url" Visible="False">
                        </dx:CardViewColumnLayoutItem>
                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="ip_server" Visible="False">
                        </dx:CardViewColumnLayoutItem>
                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="ip_database" Visible="False">
                        </dx:CardViewColumnLayoutItem>
                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="management_db" Visible="False">
                        </dx:CardViewColumnLayoutItem>
                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="version_db" Visible="False">
                        </dx:CardViewColumnLayoutItem>
                        <dx:CardViewColumnLayoutItem ColSpan="1" ColumnName="number_module" Visible="False">
                        </dx:CardViewColumnLayoutItem>
                        <dx:CardViewCommandLayoutItem ButtonRenderMode="Button" ColSpan="1">
                            <CustomButtons>
                                <dx:CardViewCustomCommandButton ID="info" Text="INFORMACIÓN">
                                    <Styles>
                                        <Style BackColor="#0066CC" Cursor="pointer" ForeColor="White" Width="100%">
                                            <HoverStyle BackColor="#0000CC" ForeColor="White">
                                            <Border BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
                                            </HoverStyle>
                                            <Paddings Padding="5px" />
                                            <Border BorderColor="Gray" BorderStyle="Solid" BorderWidth="2px" />
                                        </Style>
                                    </Styles>
                                </dx:CardViewCustomCommandButton>
                            </CustomButtons>
                        </dx:CardViewCommandLayoutItem>
                    </Items>
                </CardLayoutProperties>

                <Styles>
                    <Card Cursor="pointer" Font-Names="Bodoni MT" ForeColor="#0066FF" HorizontalAlign="Center" Font-Size="40pt">
                        <Border BorderColor="Gray" BorderStyle="Solid" BorderWidth="1px" />
                    </Card>
                    <PagerBottomPanel>
                        <Border BorderStyle="None" />
                    </PagerBottomPanel>
                </Styles>

                <StylesExport>
                    <Card BorderSize="1" BorderSides="All"></Card>

                    <Group BorderSize="1" BorderSides="All"></Group>

                    <TabbedGroup BorderSize="1" BorderSides="All"></TabbedGroup>

                    <Tab BorderSize="1"></Tab>
                </StylesExport>

<Images>
<LoadingPanel IconID="xaf_action_reload_svg_32x32"></LoadingPanel>
</Images>

                <StylesEditors>
                    <LoadingPanel BackColor="#0066FF">
                    </LoadingPanel>
                </StylesEditors>

<Border BorderColor="Transparent"></Border>
            </dx:ASPxCardView>
            <asp:SqlDataSource ID="ComboBox" runat="server" ConnectionString="<%$ ConnectionStrings:Proyecto X %>" SelectCommand="SELECT * FROM [catalogue] WHERE ([name_catalogue] = @name_catalogue)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="management_db" Name="name_catalogue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="ComboBox0" runat="server" ConnectionString="<%$ ConnectionStrings:Proyecto X %>" SelectCommand="SELECT * FROM [catalogue] WHERE ([name_catalogue] = @name_catalogue)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="version_db" Name="name_catalogue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="ComboBox1" runat="server" ConnectionString="<%$ ConnectionStrings:Proyecto X %>" SelectCommand="SELECT * FROM [catalogue] WHERE ([name_catalogue] = @name_catalogue)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="rol" Name="name_catalogue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="CardView1" runat="server" ConnectionString="<%$ ConnectionStrings:Proyecto X %>" SelectCommand="SELECT * FROM [info_environment]" DeleteCommand="DELETE FROM [info_environment] WHERE [id] = @id" InsertCommand="INSERT INTO [info_environment] ([name_environment], [logo], [url], [ip_server], [ip_database], [management_db], [version_db], [number_module]) VALUES (@name_environment, @logo, @url, @ip_server, @ip_database, @management_db, @version_db, @number_module)" UpdateCommand="UPDATE [info_environment] SET [name_environment] = @name_environment, [logo] = @logo, [url] = @url, [ip_server] = @ip_server, [ip_database] = @ip_database, [management_db] = @management_db, [version_db] = @version_db, [number_module] = @number_module WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name_environment" Type="String" />
                    <asp:Parameter Name="logo" DbType="Binary"/>
                    <asp:Parameter Name="url" Type="String" />
                    <asp:Parameter Name="ip_server" Type="String" />
                    <asp:Parameter Name="ip_database" Type="String" />
                    <asp:Parameter Name="management_db" Type="Int32" />
                    <asp:Parameter Name="version_db" Type="Int32" />
                    <asp:Parameter Name="number_module" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name_environment" Type="String" />
                    <asp:Parameter Name="logo" DbType="Binary"/>
                    <asp:Parameter Name="url" Type="String" />
                    <asp:Parameter Name="ip_server" Type="String" />
                    <asp:Parameter Name="ip_database" Type="String" />
                    <asp:Parameter Name="management_db" Type="Int32" />
                    <asp:Parameter Name="version_db" Type="Int32" />
                    <asp:Parameter Name="number_module" Type="Int32" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    <div class="title-container"  style="
        height: 115px; top: 11px; left: 0px; background: linear-gradient(90deg, rgba(27,202,237,1) 28%, rgba(13,175,179,1) 63%, rgba(93,69,231,1) 100%);">
        <h5 style="text-align:center; padding-top: 14px; margin-bottom: 10px; color: white; font-weight: bold">::ENTORNO::</h5>
        <hr style="text-align:center; margin-top: 10px; margin-bottom: 10px; width: 300px; height: 2px; font-weight: bold; background-color: white"/>
        <h6 style="text-align:center; margin-top: 10px; margin-bottom: 10px; color: white; font-weight: bold">ENTORNO DESAROLLO - NOMINA</h6>
        <hr style="text-align:center; margin-top: 10px; margin-bottom: 10px; width: 100%; height: 2px; color: white; font-weight: bold"/>
        <h4 style="text-align:center; margin-top: 10px; margin-bottom: 10px; color: white; font-weight: bold">© CG/WEB V.3.0 by Aggity | 2020</h4>
    </div>
</asp:Content>