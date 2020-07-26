<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
        width: 351px;
    }
        .style11
        {
        width: 247px;
    }
        .style13
        {
            height: 23px;
        }
        .style15
    {
        width: 408px;
        height: 23px;
            position: absolute;
        }
    .style16
    {
            width: 408px;
        }
        .style17
        {
            width: 338px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style13" align="right" bgcolor="#99CCFF" colspan="3" 
                style="background-image: none; background-repeat: repeat">
                <asp:ImageButton ID="ImageButton3" runat="server" Height="37px" 
                    ImageUrl="~/feedback1.jpg" Width="200px" onclick="ImageButton3_Click" />
                <asp:ImageButton ID="ImageButton4" runat="server" Height="31px" 
                    ImageUrl="~/contact.jpg" Width="119px" onclick="ImageButton4_Click" />
                </td>
        </tr>
        <tr>
            <td align="left" class="style11">
                <asp:Login ID="Login1" runat="server" TitleText="Buyers Login" 
                    UserNameLabelText="User Email:" DestinationPageUrl="~/secure/Default.aspx" 
                    onauthenticate="Login1_Authenticate" BackColor="#EFF3FB" 
                    BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
                    Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="194px" 
                    Width="273px">
                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                    <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" 
                        BorderWidth="1px" Font-Names="Verdana" Font-Size="1.2em" ForeColor="#284E98" />
                    <TextBoxStyle Font-Size="1.5em" />
                    <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" 
                        ForeColor="White" />
                </asp:Login>
            </td>
            <td class="style17">
                <asp:Login ID="Login2" runat="server" TitleText="Admin Login" 
                    UserNameLabelText="Admin ID:" DestinationPageUrl="~/secure/Admin.aspx" 
                    EnableViewState="False" onauthenticate="Login2_Authenticate" 
                    BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderPadding="4" BorderStyle="Solid" 
                    BorderWidth="1px" Font-Names="Verdana" Font-Size="0.9em" ForeColor="#333333" 
                    TextLayout="TextOnTop" Width="320px" style="margin-left: 2px" 
                    Height="194px">
                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                    <LoginButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" 
                        BorderWidth="1px" Font-Names="Verdana" Font-Size="1.2em" ForeColor="#990000" />
                    <TextBoxStyle Font-Size="1.5em" />
                    <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" 
                        ForeColor="White" />
                </asp:Login>
            </td>
            <td valign="top" align="left" class="style15" 
                
                
                style="background-position: left center; background-image: none; background-repeat: inherit; background-attachment: scroll; ">
                &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/addback1.jpg" onclick="ImageButton1_Click" 
                    Width="276px" Height="190px" ImageAlign="Left" style="margin-top: 0px" />
            </td>
        </tr>
        <tr>
            <td align="justify" class="style11" bgcolor="White">
&nbsp;<asp:Label ID="Label1" runat="server" Text="Want to Buy Products ? " Font-Bold="True"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" Height="46px" 
                    ImageUrl="~/Register.jpg" onclick="ImageButton2_Click" Width="207px" />
            </td>
            <td class="style17" valign="middle" style="border: thin ridge #0000FF" 
                align="justify">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                    ForeColor="Black" Text="Highest Sold Out"></asp:Label>
            </td>
            <td class="style16" align="left" valign="bottom">
                <asp:Label ID="Label3" runat="server" Text="Powered By" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="left" class="style11" valign="top">
                <asp:Image ID="Image7" runat="server" Height="99px" ImageUrl="~/trust.jpg" 
                    Width="276px" />
            </td>
            <td class="style17" valign="top">
                <asp:Image ID="Image1" runat="server" Height="100px"  ImageAlign="TextTop" 
                    Width="100px" BorderStyle="Solid" BorderWidth="2px" 
                    ImageUrl="~/gif1.gif" />
                <asp:Image ID="Image2" runat="server"  Height="100px" ImageAlign="TextTop" 
                    Width="100px" BorderStyle="Solid" BorderWidth="2px" 
                    ImageUrl="~/gif2.gif" />
                <asp:Image ID="Image3" runat="server"  Height="100px" ImageAlign="TextTop" 
                    Width="100px" BorderStyle="Solid" BorderWidth="2px" ImageUrl="~/gif3.gif"/>
            </td>
            <td class="style16" align="left" valign="top">
                &nbsp;
                <br />
                &nbsp;<asp:Image ID="Image4" runat="server" Height="60px" ImageAlign="TextTop" 
                    Width="60px" ImageUrl="~/voda.jpg" />
                &nbsp;<asp:Image ID="Image5" runat="server" Height="60px" ImageAlign="TextTop" 
                    Width="60px" ImageUrl="~/oil.jpg" />
                &nbsp;<asp:Image ID="Image6" runat="server" Height="60px" ImageAlign="TextTop" 
                    Width="60px" ImageUrl="~/hp.jpg" />
            </td>
        </tr>
    </table>
</asp:Content>

