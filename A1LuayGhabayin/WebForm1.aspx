<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="A1LuayGhabayin.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: dimgray;
        }
        .auto-style3 {
            width: 174px;
        }
        .auto-style8 {
            width: 174px;
            height: 26px;
        }
        .auto-style14 {
            width: 174px;
            height: 23px;
        }
        .auto-style19 {
            height: 26px;
            background-color: lightgray;
            font-size: 30px;
            text-align: center;
            color: black;
        }
        .auto-style20 {
            width: 188px;
            height: 26px;
        }
        .auto-style21 {
            width: 188px;
        }
        .auto-style22 {
            width: 188px;
            height: 23px;
        }
    </style>
</head>
<body style="width: 559px; height: 384px">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style19" colspan="2">Target-Heart-Rate Calculator</td>
                </tr>
                <tr>
                    <td class="auto-style20">First Name:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="firsttxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">Last Name:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="lasttxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">Year Of Birth:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="yearofbirthtxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">Gender:</td>
                    <td class="auto-style3">
                        <asp:RadioButtonList ID="genderrbl" runat="server">
                            <asp:ListItem>Men</asp:ListItem>
                            <asp:ListItem>Women</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">-------------------------------</td>
                    <td class="auto-style3">-----------------------------</td>
                </tr>
                <tr>
                    <td class="auto-style21">First Name:</td>
                    <td class="auto-style3">
                        <asp:Label ID="firstlbl" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">Last Name:</td>
                    <td class="auto-style14">
                        <asp:Label ID="lastlbl" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">Year Of Birth:</td>
                    <td class="auto-style3">
                        <asp:Label ID="yearofbirthlbl" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">Age (Years):</td>
                    <td class="auto-style3">
                        <asp:Label ID="ageyearslbl" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">Max Heartrate:</td>
                    <td class="auto-style3">
                        <asp:Label ID="maxheartlbl" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">Target Heartrate Range:</td>
                    <td class="auto-style3">
                        <asp:Label ID="targetheartlbl" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">
                        <asp:Button ID="calbtn" runat="server" OnClick="calbtn_Click" Text="Calculate" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="resetbtn" runat="server" CausesValidation="False" OnClick="resetbtn_Click" Text="Reset" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="firsttxt" Display="Dynamic" ErrorMessage="first name is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style21">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lasttxt" Display="Dynamic" ErrorMessage="last name is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="yearofbirthtxt" Display="Dynamic" ErrorMessage="year of birth is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="genderrbl" Display="Dynamic" ErrorMessage="gender is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
