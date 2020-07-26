<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 700px;
        }
        .style8
        {
            width: 143px;
        }
        .style9
        {
            width: 376px;
        }
        .style11
        {
            width: 54px;
        }
        .style12
        {
            width: 14px;
        }
        .style14
        {
            width: 344px;
        }
        .style15
        {
            width: 410px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style7">
        <tr>
            <td class="style14" bgcolor="#FF99FF">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="31px" 
                    ImageUrl="~/Back.png" onclick="ImageButton1_Click1" Width="72px" />
            </td>
            <td class="style12" bgcolor="#FF99FF">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14" bgcolor="#FF99FF">
                &nbsp;</td>
            <td class="style12" bgcolor="#FF99FF">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14" bgcolor="#FF99FF">
                <asp:Label ID="Label1" runat="server" Text="Name :"></asp:Label>
            </td>
            <td class="style12" bgcolor="#FF99FF">
                <asp:TextBox ID="name" runat="server" Width="172px" ValidationGroup="g1"></asp:TextBox>
            </td>
            <td class="style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="name" ErrorMessage="Enter Name" ForeColor="Red" 
                    ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14" bgcolor="#FF99FF">
                <asp:Label ID="Label2" runat="server" Text="Email :"></asp:Label>
            </td>
            <td class="style12" bgcolor="#FF99FF">
                <asp:TextBox ID="email" runat="server" Width="227px" ValidationGroup="g1"></asp:TextBox>
            </td>
            <td class="style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="email" ErrorMessage="Enter Email" ForeColor="Red" 
                    ValidationGroup="g1"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="email" ErrorMessage="Enter Valid Email" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="g1"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14" bgcolor="#FF99FF">
                <asp:Label ID="Label3" runat="server" Text="Feedback"></asp:Label>
            </td>
            <td class="style12" bgcolor="#FF99FF">
                <asp:TextBox ID="feedbak" runat="server" Height="209px" 
                    ontextchanged="TextBox3_TextChanged" Width="362px" ValidationGroup="g1"></asp:TextBox>
            </td>
            <td class="style15" valign="middle">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="feedbak" ErrorMessage="Enter Feedback" ForeColor="Red" 
                    ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14" bgcolor="#FF99FF">
                &nbsp;</td>
            <td align="right" class="style12" bgcolor="#FF99FF">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="41px" 
                    ImageUrl="~/Submit1.jpg" onclick="ImageButton2_Click" Width="117px" 
                    ValidationGroup="g1" />
            </td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

