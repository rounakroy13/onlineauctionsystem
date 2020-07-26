<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="transaction.aspx.cs" Inherits="secure_transaction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style18
        {
            width: 534px;
            }
        .style20
        {
            width: 26px;
            height: 23px;
        }
        .style23
        {
        }
        .style24
        {
            width: 108px;
            height: 23px;
        }
        .style25
        {
            width: 108px;
        }
        .style26
        {
            width: 26px;
        }
        .style27
        {
            width: 534px;
        }
        .style28
        {
            width: 26px;
            height: 66px;
        }
        .style29
        {
            width: 108px;
            height: 66px;
        }
        .style30
        {
            width: 534px;
            height: 66px;
        }
        .style31
        {
            width: 534px;
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table bgcolor="White" class="style1">
        <tr>
            <td bgcolor="White" class="style26">
                &nbsp;</td>
            <td align="center" bgcolor="White" class="style23" colspan="2">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                    Text="Welcome to Payment Gateway"></asp:Label>
            </td>
            <td align="center" bgcolor="White" class="style23">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style20">
            </td>
            <td bgcolor="White" class="style24">
            </td>
            <td bgcolor="White" class="style18">
            </td>
            <td bgcolor="White" class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style26">
                &nbsp;</td>
            <td align="right" bgcolor="White" class="style25">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Card  :"></asp:Label>
            </td>
            <td bgcolor="White" class="style27">
                &nbsp;
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="card" 
                    Text="Debit Card" ValidationGroup="t" />
&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="card" 
                    Text="Credit Card" ValidationGroup="t" />
            &nbsp;&nbsp;&nbsp;
            </td>
            <td bgcolor="White" class="style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style26">
                &nbsp;</td>
            <td align="right" bgcolor="White" class="style25">
                &nbsp;</td>
            <td bgcolor="White" class="style27">
                &nbsp;</td>
            <td bgcolor="White" class="style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style26">
                &nbsp;</td>
            <td align="right" bgcolor="White" class="style25">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Type :"></asp:Label>
            </td>
            <td bgcolor="White" class="style27">
                &nbsp;
                <asp:RadioButton ID="RadioButton3" runat="server" Text="." 
                    ValidationGroup="type" />
                <asp:Image ID="Image2" runat="server" Height="30px" 
                    ImageUrl="~/secure/master.jpg" Width="60px" />
&nbsp;<asp:RadioButton ID="RadioButton4" runat="server" Text="." ValidationGroup="type" />
                <asp:Image ID="Image3" runat="server" Height="30px" 
                    ImageUrl="~/secure/visa.jpg" Width="60px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td bgcolor="White" class="style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style26">
                &nbsp;</td>
            <td align="right" bgcolor="White" class="style25">
                &nbsp;</td>
            <td bgcolor="White" class="style27">
                &nbsp;</td>
            <td bgcolor="White" class="style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style26">
                &nbsp;</td>
            <td align="right" bgcolor="White" class="style25">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Card Number :"></asp:Label>
            </td>
            <td bgcolor="White" class="style27" style="font-size: xx-large">
                &nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="X-Large" MaxLength="4" 
                    Width="70px" ValidationGroup="t"></asp:TextBox>
&nbsp;/
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="X-Large" MaxLength="4" 
                    Width="70px" ValidationGroup="t"></asp:TextBox>
&nbsp;/
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="X-Large" MaxLength="4" 
                    Width="70px" ValidationGroup="t"></asp:TextBox>
&nbsp;/
                <asp:TextBox ID="TextBox4" runat="server" Font-Size="X-Large" MaxLength="4" 
                    Width="70px" ValidationGroup="t"></asp:TextBox>
            </td>
            <td bgcolor="White" class="style27" style="font-size: xx-large">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Enter Card Number" 
                    Font-Size="Medium" ForeColor="Red" ValidationGroup="t"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style20">
                </td>
            <td align="right" bgcolor="White" class="style24">
                </td>
            <td bgcolor="White" class="style18" rowspan="2">
                &nbsp;
                <asp:TextBox ID="TextBox5" runat="server" Font-Size="X-Large" MaxLength="3" 
                    Width="70px" ValidationGroup="t"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image4" runat="server" Height="84px" 
                    ImageUrl="~/secure/ccard.jpg" Width="189px" />
            </td>
            <td bgcolor="White" class="style18">
                </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style28">
                </td>
            <td align="right" bgcolor="White" class="style29">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="CVV :"></asp:Label>
&nbsp;</td>
            <td bgcolor="White" class="style30">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Enter CV" Font-Size="Medium" 
                    ForeColor="Red" ValidationGroup="t"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style26">
                &nbsp;</td>
            <td align="right" bgcolor="White" class="style25">
                &nbsp;</td>
            <td bgcolor="White" class="style27">
                &nbsp;</td>
            <td bgcolor="White" class="style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style26">
                &nbsp;</td>
            <td align="right" bgcolor="White" class="style25">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Expiry Date"></asp:Label>
            </td>
            <td bgcolor="White" class="style27" style="font-size: xx-large">
                &nbsp;
                <asp:TextBox ID="TextBox6" runat="server" Font-Size="Large" MaxLength="2" 
                    Width="43px" ValidationGroup="t">mm</asp:TextBox>
&nbsp;/
                <asp:TextBox ID="TextBox7" runat="server" Font-Size="Large" MaxLength="4" 
                    Width="70px" ValidationGroup="t">yyyy</asp:TextBox>
            </td>
            <td bgcolor="White" class="style27" style="font-size: xx-large">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="Enter Expiry Date" 
                    Font-Size="Medium" ForeColor="Red" ValidationGroup="t"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style20">
                </td>
            <td align="right" bgcolor="White" class="style24">
                </td>
            <td bgcolor="White" class="style31">
                </td>
            <td bgcolor="White" class="style31">
                </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style26">
                &nbsp;</td>
            <td align="right" bgcolor="White" class="style25">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Name on Card :"></asp:Label>
            </td>
            <td bgcolor="White" class="style27">
                &nbsp;
                <asp:TextBox ID="TextBox8" runat="server" Font-Size="Large" Width="289px" 
                    ValidationGroup="t"></asp:TextBox>
            </td>
            <td bgcolor="White" class="style27">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="Enter Card Name" Font-Size="Medium" 
                    ForeColor="Red" ValidationGroup="t"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style26">
                &nbsp;</td>
            <td align="right" bgcolor="White" class="style25">
                &nbsp;</td>
            <td bgcolor="White" class="style27">
                &nbsp;</td>
            <td bgcolor="White" class="style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style26">
                &nbsp;</td>
            <td align="right" bgcolor="White" class="style25">
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="IPIN :"></asp:Label>
            </td>
            <td bgcolor="White" class="style27">
                &nbsp;
                <asp:TextBox ID="TextBox9" runat="server" Height="30px" ValidationGroup="t" 
                    Width="195px" TextMode="Password"></asp:TextBox>
            &nbsp;<asp:TextBox ID="email" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td bgcolor="White" class="style27">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="Enter PIN" ForeColor="#FF5050" 
                    ValidationGroup="t"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td bgcolor="White" class="style26">
                &nbsp;</td>
            <td align="right" bgcolor="White" class="style25">
                &nbsp;</td>
            <td bgcolor="White" class="style27">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td bgcolor="White" class="style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style26">
                &nbsp;</td>
            <td align="right" bgcolor="White" class="style25">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="Ammount :"></asp:Label>
            </td>
            <td bgcolor="White" class="style27">
                &nbsp;&nbsp;
                <asp:Label ID="price" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td bgcolor="White" class="style27">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="White" class="style26">
                &nbsp;</td>
            <td align="right" bgcolor="White" class="style25">
                &nbsp;</td>
            <td bgcolor="White" class="style27">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton4" runat="server" Height="52px" 
                    ImageUrl="~/secure/pay.jpg" onclick="ImageButton4_Click" Width="82px" 
                    ValidationGroup="t" />
            </td>
            <td bgcolor="White" class="style27">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

