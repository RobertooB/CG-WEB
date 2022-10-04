<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AplicativosIT.Login" %>
<%@ Register assembly="DevExpress.Web.v22.1, Version=22.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <dx:aspxlabel ID="ASPxLabel1" runat="server" Text="Iniciar Sesión" style="font-size: 25px; margin-left: 60px; font-weight: bolder;"></dx:aspxlabel>
        <dx:aspxformlayout runat="server" ID="ASPxFormLayout1" Width="100%" Height="100%">
                                <Items>
                                    <dx:LayoutItem Caption="Usuario">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxTextBox ID="tbLogin" runat="server" Width="100%" ClientInstanceName="tbLogin">
                                                    <ValidationSettings EnableCustomValidation="True" ValidationGroup="entryGroup" SetFocusOnError="True"
                                                        ErrorDisplayMode="Text" ErrorTextPosition="Bottom" CausesValidation="True">
                                                        <RequiredField ErrorText="Usuario requerido" IsRequired="True" />
                                                        <RegularExpression ErrorText="Login required" />
                                                        
                                                    </ValidationSettings>
                                                </dx:ASPxTextBox>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <dx:LayoutItem Caption="Contraseña">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" Width="100%" Password="True">
                                                    <ValidationSettings EnableCustomValidation="True" ValidationGroup="entryGroup" SetFocusOnError="True"
                                                        ErrorDisplayMode="Text" ErrorTextPosition="Bottom">
                                                        <RequiredField ErrorText="Contraseña requerido" IsRequired="True" />
                                                        
                                                    </ValidationSettings>
                                                </dx:ASPxTextBox>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <dx:LayoutItem Caption="">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxCheckBox ID="chbRemember" runat="server" Text="Recordar">
                                                </dx:ASPxCheckBox>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>
                                    </dx:LayoutItem>
                                    <dx:LayoutItem ShowCaption="False" Paddings-PaddingTop="19">
                                        <LayoutItemNestedControlCollection>
                                            <dx:LayoutItemNestedControlContainer>
                                                <dx:ASPxButton ID="btIniciar" runat="server" Text="Iniciar" Width="80px" AutoPostBack="False" Style="float: left; margin-left: 48px; background: white; border-radius: 15px; box-shadow: 0 0 6px white;">
                                                    <ClientSideEvents Click="function(s, e) { if(ASPxClientEdit.ValidateGroup('entryGroup')) pcLogin.Hide(); }" CheckedChanged="function(s, e) {
	alert( 'Hello, world!' );
}" />
                                                </dx:ASPxButton>
                                                <dx:ASPxButton ID="btCancel" runat="server" Text="Cancel" Width="80px" AutoPostBack="False" Style="float: left; margin-left: 8px; background: white; border-radius: 15px; box-shadow: 0 0 6px white;">
                                                    <ClientSideEvents Click="function(s, e) { pcLogin.Hide(); }" />
                                                </dx:ASPxButton>
                                            </dx:LayoutItemNestedControlContainer>
                                        </LayoutItemNestedControlCollection>

<Paddings PaddingTop="19px"></Paddings>
                                    </dx:LayoutItem>
                                </Items>
                            </dx:aspxformlayout>
</asp:Content>

